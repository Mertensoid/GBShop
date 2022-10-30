//
//  CatalogViewController.swift
//  GBShop
//
//  Created by admin on 23.10.2022.
//

import UIKit

class CatalogViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()
    var isFilterShown = false
    var heightWithFilterConstraint: NSLayoutConstraint!
    
    let requestFactory = RequestFactory()
    var myCatalog = [GetCatalogResult]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        addViews()
        layoutViews()
        configure()
        
        let getCatalog = requestFactory.makeGetCatalogRequestFactory()
        getCatalog.getCatalog(
            pageNumber: 1,
            idCategory: 1) { response in
                switch response.result {
                case .success(let getCatalog):
                    self.myCatalog = getCatalog
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCatalog.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CatalogCell()
        cell.configureData(
            name: myCatalog[indexPath.row].productName,
            picture: myCatalog[indexPath.row].productPicture,
            mainProperty: myCatalog[indexPath.row].mainProperty,
            secondaryProperty: myCatalog[indexPath.row].secondaryProperty,
            usage: myCatalog[indexPath.row].usagePictures)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductViewController(productID: indexPath.row, productName: myCatalog[indexPath.row].productName)
        navigationController?.pushViewController(productVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
}

@objc extension CatalogViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(tableView)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        heightWithFilterConstraint = headerView.heightAnchor.constraint(equalToConstant: 100)
        
    }
    override func configure() {
        super.configure()
        headerTitle.text = "Каталог"
        setLeftHeaderButton(image: UIImage(named: "back_arrow_icon") ?? UIImage(), selector: #selector(backButtonPressed))
        setRightHeaderButton(image: UIImage(named: "filter_inactive_icon.png") ?? UIImage(), selector: #selector(filterButtonPressed))
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
    }
    func backButtonPressed() {
        self.dismiss(animated: true)
    }
    func filterButtonPressed() {
        if headerView.translatesAutoresizingMaskIntoConstraints {
            headerView.translatesAutoresizingMaskIntoConstraints.toggle()
        }
        if !isFilterShown {
            isFilterShown.toggle()
            self.heightWithFilterConstraint.constant = 150
            UIView.animate(withDuration: 0.5) {
                self.heightWithFilterConstraint.isActive = true
                self.view.layoutIfNeeded()
            }
        } else {
            isFilterShown.toggle()
            self.heightWithFilterConstraint.constant = 100
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
    }
}

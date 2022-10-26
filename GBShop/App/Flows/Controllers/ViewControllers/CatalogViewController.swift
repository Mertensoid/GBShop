//
//  CatalogViewController.swift
//  GBShop
//
//  Created by admin on 23.10.2022.
//

import UIKit

class CatalogViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()
    let myTestCatalog = MyTestCatalog()
    var isFilterShown = false
    var heightWithFilterConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        addViews()
        layoutViews()
        configure()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTestCatalog.catalog.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CatalogCell()
        cell.configureData(
            name: myTestCatalog.catalog[indexPath.row].productName,
            picture: myTestCatalog.catalog[indexPath.row].picture,
            mainProperty: myTestCatalog.catalog[indexPath.row].mainProperty,
            secondaryProperty: myTestCatalog.catalog[indexPath.row].secondaryProperty,
            usage: myTestCatalog.catalog[indexPath.row].usagePictures)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductViewController(product: myTestCatalog.catalog[indexPath.row].productName)
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

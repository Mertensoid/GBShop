//
//  CatalogViewController.swift
//  GBShop
//
//  Created by admin on 23.10.2022.
//

import UIKit

class CatalogViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let headerView = UIView()
    let tableView = UITableView()
    
    let myTestCatalog = MyTestCatalog()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Каталог"
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
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductViewController()
        navigationController?.pushViewController(productVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
}

@objc extension CatalogViewController {
    func addViews() {
        view.addSubview(headerView)
        view.addSubview(tableView)
    }
    func layoutViews() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 88),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    func configure() {
        view.backgroundColor = .white
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = Resources.Colors.darkRed
        navigationController?.navigationBar.barTintColor = .yellow
        navigationController?.navigationBar.isTranslucent = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
}

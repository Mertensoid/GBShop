//
//  BasketViewController.swift
//  GBShop
//
//  Created by admin on 30.10.2022.
//

import UIKit

final class BasketViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource, OptionButtonsDelegate {

    private let requestFactory = RequestFactory()
    
    private let tableView = UITableView()
    private let summaryView = UIView()
    private let clearBasketButton = ClearBasketButton()
    private let buyButton = BuyButton()
    private let summLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        addViews()
        layoutViews()
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BasketDataSingleton.shared.basketData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = BasketCell(
            name: BasketDataSingleton.shared.basketData[indexPath.row].0.productName,
            image: UIImage(named: BasketDataSingleton.shared.basketData[indexPath.row].0.productPicture) ?? UIImage(),
            quantity: BasketDataSingleton.shared.basketData[indexPath.row].1,
            price: Double(BasketDataSingleton.shared.basketData[indexPath.row].0.productPrice) * Double(BasketDataSingleton.shared.basketData[indexPath.row].1))
        cell.selectionStyle = .none
        cell.delegate = self
        cell.indexPath = indexPath
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    func deleteButtonTapped(at index: IndexPath) {
        print("delete button tapped at index:\(index)")
    }
    func quantityButtonTapped(at index: IndexPath) {
        print("quantity button tapped at index:\(index)")
    }
}

@objc extension BasketViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(tableView)
        view.addSubview(summaryView)
        summaryView.addSubview(clearBasketButton)
        summaryView.addSubview(buyButton)
        summaryView.addSubview(summLabel)
    }
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: summaryView.topAnchor),
            
            summaryView.heightAnchor.constraint(equalToConstant: 90),
            summaryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            summaryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            summaryView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -83),
            
            clearBasketButton.leadingAnchor.constraint(equalTo: summaryView.leadingAnchor, constant: 10),
            clearBasketButton.trailingAnchor.constraint(equalTo: summaryView.centerXAnchor, constant: -5),
            clearBasketButton.bottomAnchor.constraint(equalTo: summaryView.bottomAnchor, constant: -10),
            
            buyButton.leadingAnchor.constraint(equalTo: summaryView.centerXAnchor, constant: 5),
            buyButton.trailingAnchor.constraint(equalTo: summaryView.trailingAnchor, constant: -10),
            buyButton.bottomAnchor.constraint(equalTo: summaryView.bottomAnchor, constant: -10),
            
            summLabel.leadingAnchor.constraint(equalTo: summaryView.leadingAnchor, constant: 10),
            summLabel.trailingAnchor.constraint(equalTo: summaryView.centerXAnchor, constant: -5),
            summLabel.topAnchor.constraint(equalTo: summaryView.topAnchor, constant: 10),
        ])
    }
    override func configure() {
        super.configure()
        headerTitle.text = "Корзина"
        setLeftHeaderButton(image: UIImage(named: "back_arrow_icon") ?? UIImage(), selector: #selector(backButtonPressed))
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        
        summaryView.translatesAutoresizingMaskIntoConstraints = false
        summaryView.backgroundColor = Resources.Colors.white
        
        clearBasketButton.translatesAutoresizingMaskIntoConstraints = false
        
        buyButton.translatesAutoresizingMaskIntoConstraints = false
        
        summLabel.translatesAutoresizingMaskIntoConstraints = false
        summLabel.font = Resources.Fonts.helveticaRegular(with: 24)
        summLabel.text = "Сумма: \(BasketDataSingleton.shared.totalPrice) ₽"
        summLabel.textAlignment = .left
        summLabel.adjustsFontSizeToFitWidth = true
        summLabel.minimumScaleFactor = 0.5
    }
    func backButtonPressed() {
        dismiss(animated: true)
    }
}

//
//  ProductViewController.swift
//  GBShop
//
//  Created by admin on 23.10.2022.
//

import UIKit

final class ProductViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    let product: String
    
    let tableView = UITableView()
    let addToBasketView = UIView()
    
    init(product: String) {
        self.product = product
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        addViews()
        layoutViews()
        configure()
    }
    
    func configureProduct() {
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0...3:
            return 1
        case 4:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 300
        case 1:
            return 80
        case 2:
            return 365
        case 3:
            return 85
        case 4:
            return 430
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell!
        switch indexPath.section {
        case 0:
            cell = ProductPictureCell()
        case 1:
            cell = ProductPriceCell()
        case 2:
            cell = ProductDescriptionCell(
                name: "\"Гарант-5\"",
                type: "порошок",
                location: "потолочное",
                square: "до 27 м2",
                volume: "до 43 м3",
                start: "электрический",
                current: "100 мА",
                description: "Модуль предназначен для локализации и тушения пожаров класса А, В, С и электрооборудования, находящегося под напряжением до 1000 В* в производственных, складских, бытовых помещениях, а также для тушения открытых технологических установок и площадок при скоростях набегающего потока воздуха до 2 м/с.")
        case 3:
            cell = ProductRatingCell(rating: 3, reviews: 564)
        case 4:
            cell = ProductReviewsCell()
        default:
            cell = UITableViewCell()
        }
        cell.selectionStyle = .none
        return cell
    }
}

extension ProductViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(tableView)
        view.addSubview(addToBasketView)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: addToBasketView.topAnchor),
            
            addToBasketView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            addToBasketView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            addToBasketView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -83),
            addToBasketView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
    }
    override func configure() {
        super.configure()
        headerTitle.text = product
        setLeftHeaderButton(image: UIImage(named: "back_arrow_icon") ?? UIImage(), selector: #selector(backButtonPressed))
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = Resources.Colors.white
        
        addToBasketView.translatesAutoresizingMaskIntoConstraints = false
        addToBasketView.backgroundColor = Resources.Colors.white
    }
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}

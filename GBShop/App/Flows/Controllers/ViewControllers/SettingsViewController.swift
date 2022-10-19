//
//  SettingsViewController.swift
//  GBShop
//
//  Created by admin on 16.10.2022.
//

import UIKit

final class SettingsViewController: BaseScrollViewController, UITableViewDelegate, UITableViewDataSource {
    
    let headerLabel = UILabel()
    
    let tableView = UITableView()//(frame: CGRect(x: 0, y: 0, width: 100, height: 500))
    let numberOfSections = 2
    let numberOfRowsInFirstSection = 5
    let numberOfRowsInSecondSection = 3
    let tableHeaderHeight = 40
    let firstSectionHeaderTitle = "Пользователь"
    let secondSectionHeaderTitle = "Приложение"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        addViews()
        layoutViews()
        configure()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return numberOfRowsInFirstSection
        case 1:
            return numberOfRowsInSecondSection
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return firstSectionHeaderTitle
        case 1:
            return secondSectionHeaderTitle
        default:
            return ""
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(tableHeaderHeight)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Имя"
            case 1:
                cell.textLabel?.text = "Фамилия"
            case 2:
                cell.textLabel?.text = "E-mail"
            case 3:
                cell.textLabel?.text = "Дата рождения"
            case 4:
                cell.textLabel?.text = "Должность"
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Реклама"
            case 1:
                cell.textLabel?.text = "Тема"
            case 2:
                cell.textLabel?.text = "Помощь"
            default:
                break
            }
        default:
            break
        }
        return cell
    }
}

@objc extension SettingsViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(headerLabel)
        view.addSubview(tableView)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            headerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerLabel.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tableView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 10),
            tableView.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            tableView.heightAnchor.constraint(equalToConstant: view.frame.height - 90 - headerLabel.frame.height)
        ])
    }
    override func configure() {
        super.configure()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.text = "Настройки"
        headerLabel.font = Resources.Fonts.helveticaRegular(with: 30)
        headerLabel.textAlignment = .center
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.headerView(forSection: 0)?.textLabel?.font = Resources.Fonts.helveticaBold(with: 20)
    }
}

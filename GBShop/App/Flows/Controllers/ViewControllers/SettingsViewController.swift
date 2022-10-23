//
//  SettingsViewController.swift
//  GBShop
//
//  Created by admin on 16.10.2022.
//

import UIKit

final class SettingsViewController: BaseScrollViewController, UITableViewDelegate, UITableViewDataSource {
    
    let headerLabel = UILabel()
    let tableView = UITableView()
    var rowHeight = 110
    
    let numberOfSections = 2
    let numberOfRowsInFirstSection = 5
    let numberOfRowsInSecondSection = 3
    let tableHeaderHeight = 40
    let firstSectionHeaderTitle = "Пользователь"
    let secondSectionHeaderTitle = "Приложение"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(SettingsCell.self, forCellReuseIdentifier: "Cell")
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SettingsCell
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.setTitle("Имя")
            case 1:
                cell.setTitle("Фамилия")
            case 2:
                cell.setTitle("E-mail")
            case 3:
                cell.setTitle("Дата рождения")
            case 4:
                cell.setTitle("Должность")
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell.setTitle("Реклама")
            case 1:
                cell.setTitle("Тема")
            case 2:
                cell.setTitle("Помощь")
            default:
                break
            }
        default:
            break
        }
        rowHeight = Int(cell.contentView.frame.height)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(rowHeight)
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
            tableView.heightAnchor.constraint(equalToConstant: view.frame.height - 110 - headerLabel.frame.height)
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
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 110
    }
}

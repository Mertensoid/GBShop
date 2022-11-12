//
//  SettingsViewController.swift
//  GBShop
//
//  Created by admin on 16.10.2022.
//

import UIKit

final class SettingsViewController: BaseScrollViewController {
    private let nameLabel = UILabel()
    private let nameTextField = SmallTextField()
    private let surnameLabel = UILabel()
    private let surnameTextField = SmallTextField()
    private let emailLabel = UILabel()
    private let emailTextField = SmallTextField()
    private let dateLabel = UILabel()
    private let dateTextField = SmallTextField()
    private let postLabel = UILabel()
    private let postTextField = SmallTextField()
    private let saveButton = ApplyButton()
    private let verticalGap:CGFloat = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
}

@objc extension SettingsViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        view.addSubview(surnameLabel)
        view.addSubview(surnameTextField)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(dateLabel)
        view.addSubview(dateTextField)
        view.addSubview(postLabel)
        view.addSubview(postTextField)
        view.addSubview(saveButton)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: verticalGap),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: verticalGap),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            surnameLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: verticalGap),
            surnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            surnameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            surnameTextField.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: verticalGap),
            surnameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            surnameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: surnameTextField.bottomAnchor, constant: verticalGap),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: verticalGap),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            dateLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: verticalGap),
            dateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dateTextField.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: verticalGap),
            dateTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dateTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            postLabel.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: verticalGap),
            postLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            postLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            postTextField.topAnchor.constraint(equalTo: postLabel.bottomAnchor, constant: verticalGap),
            postTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            postTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            saveButton.topAnchor.constraint(equalTo: postTextField.bottomAnchor, constant: verticalGap),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    override func configure() {
        super.configure()
        headerTitle.text = "Настройки"
        setLeftHeaderButton(image: UIImage(named: "back_arrow_icon") ?? UIImage(), selector: #selector(backButtonPressed))
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Имя"
        
        nameTextField.translatesAutoresizingMaskIntoConstraints = false

        surnameLabel.translatesAutoresizingMaskIntoConstraints = false
        surnameLabel.text = "Фамилия"
        
        surnameTextField.translatesAutoresizingMaskIntoConstraints = false

        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "E-mail"
        emailTextField.translatesAutoresizingMaskIntoConstraints = false

        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.text = "Дата рождения"
        dateTextField.translatesAutoresizingMaskIntoConstraints = false

        postLabel.translatesAutoresizingMaskIntoConstraints = false
        postLabel.text = "Должность"
        postTextField.translatesAutoresizingMaskIntoConstraints = false

        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.setTitle("Сохранить")
    }
    
    func backButtonPressed() {
        CrashlyticsService.shared.sendReport(action: .logout)
        self.dismiss(animated: true)
    }
}

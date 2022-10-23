//
//  RegistrationViewController.swift
//  GBShop
//
//  Created by admin on 16.10.2022.
//

import UIKit

final class RegistrationViewController: BaseScrollViewController {
    
    let headerLabel = UILabel()
    let nicknameTextField = BaseTextField()
    let loginTextField = BaseTextField()
    let passwordTextField = BaseTextField()
    let passwordRepeatTextField = BaseTextField()
    let registrationButton = ApplyButton()
    let haveAccountButton = ClearButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Регистрация"
        addViews()
        layoutViews()
        configure()
    }
}

extension RegistrationViewController {
    override func addViews() {
        super.addViews()
        scrollView.addSubview(headerLabel)
        scrollView.addSubview(nicknameTextField)
        scrollView.addSubview(loginTextField)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(passwordRepeatTextField)
        scrollView.addSubview(registrationButton)
        scrollView.addSubview(haveAccountButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            headerLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            headerLabel.bottomAnchor.constraint(equalTo: nicknameTextField.topAnchor, constant: -30),
            
            nicknameTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40),
            nicknameTextField.bottomAnchor.constraint(equalTo: loginTextField.topAnchor, constant: -20),
            nicknameTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            nicknameTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            
            loginTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
            loginTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            
            passwordTextField.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            
            passwordRepeatTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            passwordRepeatTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            passwordRepeatTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            
            registrationButton.topAnchor.constraint(equalTo: passwordRepeatTextField.bottomAnchor, constant: 50),
            registrationButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            registrationButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            
            haveAccountButton.topAnchor.constraint(equalTo: registrationButton.bottomAnchor, constant: 10),
            haveAccountButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            haveAccountButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            haveAccountButton.bottomAnchor.constraint(lessThanOrEqualTo: scrollView.bottomAnchor, constant: -10),
        ])
    }
    
    override func configure() {
        super.configure()
        
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.text = "Регистрация"
        headerLabel.font = Resources.Fonts.helveticaRegular(with: 30)
        
        nicknameTextField.translatesAutoresizingMaskIntoConstraints = false
        nicknameTextField.placeholder = "Nickname"
        
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.placeholder = "E-mail"
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        
        passwordRepeatTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordRepeatTextField.placeholder = "Repeat password"

        registrationButton.translatesAutoresizingMaskIntoConstraints = false
        registrationButton.setTitle("Зарегистрироваться")
        registrationButton.addTarget(self, action: #selector(registrationButtonPressed), for: .touchUpInside)

        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.setTitle("Уже есть аккаунт?")
        haveAccountButton.addTarget(self, action: #selector(haveAccountButtonPressed), for: .touchUpInside)
    }
}

@objc extension RegistrationViewController {
    func registrationButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    func haveAccountButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}


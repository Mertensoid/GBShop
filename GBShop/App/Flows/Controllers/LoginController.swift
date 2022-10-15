//
//  LoginController.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

final class LoginController: BaseController {
    
    let headerLabel = UILabel()
    let loginTextField = PaddedTextField()
    let passwordTextField = PaddedTextField()
    let joinButton = ApplyButton()
    let forgotPasswordButton = ClearButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
}

extension LoginController {
    override func addViews() {
        super.addViews()
        view.addSubview(headerLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(joinButton)
        view.addSubview(forgotPasswordButton)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            headerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerLabel.bottomAnchor.constraint(equalTo: loginTextField.topAnchor, constant: -50),
            
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
            loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 60),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            
            joinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            joinButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            joinButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            joinButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordButton.topAnchor.constraint(equalTo: joinButton.bottomAnchor, constant: 10),
            forgotPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
        ])
    }
    override func configure() {
        super.configure()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.text = "Вход"
        headerLabel.font = Resources.Fonts.helveticaRegular(with: 30)
        
        
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.backgroundColor = Resources.Colors.lightGray
        loginTextField.layer.borderColor = Resources.Colors.borderGray.cgColor
        loginTextField.layer.borderWidth = 2
        loginTextField.layer.cornerRadius = 10
        loginTextField.placeholder = "E-mail"
        loginTextField.font = Resources.Fonts.helveticaRegular(with: 16)
        
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.backgroundColor = Resources.Colors.lightGray
        passwordTextField.layer.borderColor = Resources.Colors.borderGray.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.placeholder = "Password"
        passwordTextField.font = Resources.Fonts.helveticaRegular(with: 16)
        passwordTextField.layoutMargins = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
        
        joinButton.translatesAutoresizingMaskIntoConstraints = false
        joinButton.setTitle("Войти")
        joinButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        joinButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        joinButton.layer.shadowOpacity = 1.0
        joinButton.layer.shadowRadius = 3.0
        joinButton.layer.masksToBounds = false
        
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.setTitle("Забыли свой пароль?")
    }
}

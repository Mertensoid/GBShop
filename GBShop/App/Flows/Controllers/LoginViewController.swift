//
//  LoginController.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

final class LoginViewController: BaseScrollViewController {

    let headerLabel = UILabel()
    let loginTextField = BaseTextField()
    let passwordTextField = BaseTextField()
    let joinButton = ApplyButton()
    let registrationButton = CancelButton()
    let forgotPasswordButton = ClearButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
}

extension LoginViewController {
    override func addViews() {
        super.addViews()
        scrollView.addSubview(headerLabel)
        scrollView.addSubview(loginTextField)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(joinButton)
        scrollView.addSubview(registrationButton)
        scrollView.addSubview(forgotPasswordButton)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            
            headerLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            headerLabel.bottomAnchor.constraint(equalTo: loginTextField.topAnchor, constant: -50),

            loginTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40),
            loginTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
            loginTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),

            passwordTextField.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor, constant: -20),
            passwordTextField.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),

            joinButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            joinButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            joinButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),

            
            registrationButton.topAnchor.constraint(equalTo: joinButton.bottomAnchor, constant: 20),
            registrationButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            registrationButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),

            forgotPasswordButton.topAnchor.constraint(equalTo: registrationButton.bottomAnchor, constant: 10),
            forgotPasswordButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            forgotPasswordButton.bottomAnchor.constraint(lessThanOrEqualTo: scrollView.bottomAnchor, constant: -10),
            
        ])
        
    }
    override func configure() {
        super.configure()
        self.navigationController?.isNavigationBarHidden = true
        
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.text = "Вход"
        headerLabel.font = Resources.Fonts.helveticaRegular(with: 30)

        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.placeholder = "E-mail"

        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"

        joinButton.translatesAutoresizingMaskIntoConstraints = false
        joinButton.setTitle("Войти")
        joinButton.addTarget(self, action: #selector(joinButtonPressed), for: .touchUpInside)

        registrationButton.translatesAutoresizingMaskIntoConstraints = false
        registrationButton.setTitle("Регистрация")
        registrationButton.addTarget(self, action: #selector(registrationButtonPressed), for: .touchUpInside)
        
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.setTitle("Забыли свой пароль?")
        forgotPasswordButton.addTarget(self, action: #selector(forgotPasswordButtonPressed), for: .touchUpInside)
    }
}

@objc extension LoginViewController {
    func joinButtonPressed() {
        print("Join button pressed")
//        let tabVC = UITabBarController()
//        navigationController?.pushViewController(tabVC, animated: true)
    }
    func registrationButtonPressed() {
        print("Registration button pressed")
        let regVC = RegistrationViewController()
        navigationController?.pushViewController(regVC, animated: true)
    }
    func forgotPasswordButtonPressed() {
        print("Forgot password button pressed")
    }
}

//
//  LoginController.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

final class LoginViewController: BaseScrollViewController {
    private let loginTextField = BaseTextField()
    private let passwordTextField = BaseTextField()
    private let joinButton = ApplyButton()
    private let registrationButton = CancelButton()
    private let forgotPasswordButton = ClearButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
}

extension LoginViewController {
    override internal func addViews() {
        super.addViews()
        scrollView.addSubview(loginTextField)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(joinButton)
        scrollView.addSubview(registrationButton)
        scrollView.addSubview(forgotPasswordButton)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([

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
        self.navigationController?.navigationBar.isHidden = false
        headerTitle.text = "Вход"
        setLeftHeaderButton(image: UIImage(named: "logout_icon.png") ?? UIImage(), selector: #selector(logout))

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
        let tabVC = TabBarController()
        tabVC.modalPresentationStyle = .fullScreen
        present(tabVC, animated: true)
    }
    func registrationButtonPressed() {
        print("Registration button pressed")
        let regVC = RegistrationViewController()
        regVC.modalPresentationStyle = .fullScreen
        present(regVC, animated: true)
    }
    func forgotPasswordButtonPressed() {
        print("Forgot password button pressed")
    }
    func logout() {
        self.dismiss(animated: true)
    }
}

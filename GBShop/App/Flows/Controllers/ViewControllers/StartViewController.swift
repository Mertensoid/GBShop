//
//  ViewController.swift
//  GBShop
//
//  Created by admin on 14.10.2022.
//

import UIKit

final class StartViewController: UIViewController {
    private let logoImageView = UIImageView()
    private let logoTextView = UIImageView()
    private let startButton = ApplyButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
}

extension StartViewController {
    func addViews() {
        view.addSubview(logoImageView)
        view.addSubview(logoTextView)
        view.addSubview(startButton)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.bottomAnchor.constraint(equalTo: logoTextView.topAnchor, constant: -10),
            logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),

            logoTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoTextView.widthAnchor.constraint(equalTo: logoImageView.widthAnchor),
            logoTextView.heightAnchor.constraint(equalTo: logoTextView.widthAnchor, multiplier: 0.25),
            
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    
    func configure() {
        view.backgroundColor = Resources.Colors.white
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "logo_picture_vector")
        
        logoTextView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.contentMode = .scaleAspectFit
        logoTextView.image = UIImage(named: "logo_words_vector")
        
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.setTitle("Каталог")
        startButton.addTarget(
            self,
            action: #selector(startButtonPressed),
            for: .touchUpInside)
    }
}

@objc extension StartViewController {
    func startButtonPressed() {
        
//        let numbers = [0]
//        let _ = numbers[1]
        let loginVC = LoginViewController()
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true)
    }
}



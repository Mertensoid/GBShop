//
//  BaseController.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

class BaseViewController: UIViewController {
    let headerView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
    let headerTitle = UILabel()
    let leftHeaderButton = UIButton()
    let rightHeaderButton = UIButton()
    var con: NSLayoutConstraint = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
    
    func setLeftHeaderButton(image: UIImage, selector: Selector) {
        headerView.addSubview(leftHeaderButton)
        leftHeaderButton.translatesAutoresizingMaskIntoConstraints = false
        leftHeaderButton.tintColor = Resources.Colors.white
        NSLayoutConstraint.activate([
            leftHeaderButton.centerYAnchor.constraint(equalTo: headerView.topAnchor, constant: 72),
            leftHeaderButton.centerXAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 35),
            leftHeaderButton.heightAnchor.constraint(equalToConstant: 30),
            leftHeaderButton.widthAnchor.constraint(equalToConstant: 30)
        ])
        leftHeaderButton.setImage(image, for: .normal)
        leftHeaderButton.contentMode = .scaleAspectFill
        leftHeaderButton.addTarget(self, action: selector, for: .touchUpInside)
    }
    
    func setRightHeaderButton(image: UIImage, selector: Selector) {
        headerView.addSubview(rightHeaderButton)
        rightHeaderButton.translatesAutoresizingMaskIntoConstraints = false
        rightHeaderButton.tintColor = Resources.Colors.white
        NSLayoutConstraint.activate([
            rightHeaderButton.centerYAnchor.constraint(equalTo: headerView.topAnchor, constant: 72),
            rightHeaderButton.centerXAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -35),
            rightHeaderButton.heightAnchor.constraint(equalToConstant: 30),
            rightHeaderButton.widthAnchor.constraint(equalToConstant: 30)
        ])
        rightHeaderButton.setImage(image, for: .normal)
        rightHeaderButton.contentMode = .scaleAspectFill
        rightHeaderButton.addTarget(self, action: selector, for: .touchUpInside)
    }
}

@objc extension BaseViewController {
    func addViews() {
        view.addSubview(headerView)
        headerView.addSubview(headerTitle)
    }
    func layoutViews() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            headerTitle.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            headerTitle.centerYAnchor.constraint(equalTo: headerView.topAnchor, constant: 72),
            headerTitle.widthAnchor.constraint(equalToConstant: headerView.frame.width / 2)
        ])
    }
    func configure() {
        view.backgroundColor = Resources.Colors.white
        
        headerView.backgroundColor = Resources.Colors.darkRed
        
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        headerTitle.font = Resources.Fonts.helveticaBold(with: 24)
        headerTitle.textAlignment = .center
        headerTitle.numberOfLines = 1
        headerTitle.minimumScaleFactor = 0.5
        headerTitle.adjustsFontSizeToFitWidth = true
    }
}

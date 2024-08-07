//
//  RegView.swift
//  MessageChat
//
//  Created by David Kochkin on 29.07.2024.
//

import UIKit

protocol RegViewProtocol: AnyObject {
    
}

class RegView: UIViewController, RegViewProtocol {
    
    var presenter: regViewPresenterProtocol!
    
    let pageTitle: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text      = .localized("regTitleLabel")
        $0.textColor = .white
        $0.font      = .systemFont(ofSize: 26, weight: .black)
        return $0
    }(UILabel())
    
    private lazy var nameField: UITextField     = TextField(fieldPlaceholder: .localized("namePlaceholder"))
    private lazy var emailField: UITextField    = TextField(fieldPlaceholder: "Email")
    private lazy var passwordField: UITextField = TextField(fieldPlaceholder: .localized("passwordPlaceholder"), isPassword: true)
    
    private lazy var regButton: UIButton = Button(buttonText: .localized("regButtonText")) {
        print("reg")
    }
    
    private lazy var bottomButton: UIButton = Button(buttonText: .localized("authTitleLabel"), buttonColor: .clear, titleColor: .white) {
        print("Reg")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(pageTitle, nameField, emailField, passwordField, regButton, bottomButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            pageTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            pageTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pageTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            nameField.heightAnchor.constraint(equalToConstant: 50),
            emailField.heightAnchor.constraint(equalToConstant: 50),
            passwordField.heightAnchor.constraint(equalToConstant: 50),
            
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            
            nameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            nameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            nameField.bottomAnchor.constraint(equalTo: emailField.topAnchor, constant: -15),
            
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 15),
            
            regButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 40),
            regButton.heightAnchor.constraint(equalToConstant: 50),
            regButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            regButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            bottomButton.heightAnchor.constraint(equalToConstant: 50),
            bottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            bottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            bottomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
    }
}

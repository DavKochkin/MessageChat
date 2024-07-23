//
//  AuthView.swift
//  MessageChat
//
//  Created by David Kochkin on 07.07.2024.
//

import UIKit

protocol AuthViewProtocol: AnyObject {
    
}


class AuthView: UIViewController, AuthViewProtocol {
    
    var presenter: AuthViewPresenterProtocol!
    
    let pageTitle: UILabel = {
        $0.text = .localized("authTitleLabel")
        $0.textColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 26, weight: .black)
        return $0
    }(UILabel())
    
    lazy var emailField: UITextField    = TextField(fieldPlaceholder: "Email")
    lazy var passwordField: UITextField = TextField(fieldPlaceholder: .localized("passwordPlaceholder"), isPassword: true )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubviews(pageTitle, emailField, passwordField)
        
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            pageTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            pageTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pageTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            emailField.heightAnchor.constraint(equalToConstant: 50),
            passwordField.heightAnchor.constraint(equalToConstant: 50),
            
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40),
        ])
    }
}

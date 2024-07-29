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
        $0.text      = .localized("authTitleLabel")
        $0.textColor = .white
        $0.font      = .systemFont(ofSize: 26, weight: .black)
    }(UILabel())
    
    private lazy var emailField: UITextField    = TextField(fieldPlaceholder: "Email")
    private lazy var passwordField: UITextField = TextField(fieldPlaceholder: .localized("passwordPlaceholder"), isPassword: true)
    
    private lazy var authButton: UIButton = Button(buttonText: .localized("authButtonText")) {
        print("auth ")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

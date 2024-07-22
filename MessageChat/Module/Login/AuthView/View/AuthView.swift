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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(pageTitle)
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            pageTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            pageTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pageTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
}

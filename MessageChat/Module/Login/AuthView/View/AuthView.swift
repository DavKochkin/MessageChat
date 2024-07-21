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
        return $0
    }(UILabel(frame: CGRect(x: 10, y: 100, width: 100, height: 50)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(pageTitle)
    }
}

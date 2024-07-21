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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
}

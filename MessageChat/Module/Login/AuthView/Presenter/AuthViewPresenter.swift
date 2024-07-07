//
//  AuthViewPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 07.07.2024.
//

import UIKit

protocol AuthViewPresenterProtocol: AnyObject {
    init(view: AuthViewProtocol)
}

class AuthViewPresenter: AuthViewPresenterProtocol {
    weak var view: AuthViewProtocol?
    
    required init(view: any AuthViewProtocol) {
        self.view = view 
    }
    
    
}

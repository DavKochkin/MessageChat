//
//  UserListViewPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 19.08.2024.
//

import UIKit

protocol UserListViewPresenterProtocol: AnyObject {
    init(view: UserListViewProtocol)
}

class UserListViewPresenter: UserListViewPresenterProtocol {
    
    weak var view: UserListViewProtocol?
    
    required init(view: any UserListViewProtocol) {
        self.view = view 
    }
}

//
//  UserListViewPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 19.08.2024.
//

import UIKit

protocol UserListViewPresenterProtocol: AnyObject {
    //    init(view: UserListViewProtocol)
    var users: [ChatUser] { get set }
}

class UserListViewPresenter: UserListViewPresenterProtocol {
    weak var view: UserListViewProtocol?
    
    var users: [ChatUser]
    
    required init(view: any UserListViewProtocol) {
        self.view = view
        
        self.users = ChatUser.mockData()
    }
}

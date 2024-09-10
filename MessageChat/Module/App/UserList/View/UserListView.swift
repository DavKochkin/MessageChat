//
//  UserListView.swift
//  MessageChat
//
//  Created by David Kochkin on 19.08.2024.
//

import UIKit

protocol UserListViewProtocol: AnyObject {
    
}


class UserListView: UIViewController, UserListViewProtocol {
    
    var presenter: UserListViewPresenter! 

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
    }
}

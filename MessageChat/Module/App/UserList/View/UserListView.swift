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
    
    lazy var tableView: UITableView = {
        return $0
    }(UITableView(frame: view.bounds, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = String("Сообщения")
    }
}

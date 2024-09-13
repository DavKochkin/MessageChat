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
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        $0.dataSource = self
        $0.delegate   = self
        return $0
    }(UITableView(frame: view.bounds, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = String("Пользователи")
        
        view.addSubview(tableView)
    }
}


extension UserListView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cellItem = presenter.users[indexPath.row]
        
        var config   = cell.defaultContentConfiguration()
        config.text  = cellItem.name
        config.image = UIImage(systemName: "person.circle.fill")
        
        cell.contentConfiguration = config
        return cell
    }
    
    
}

extension UserListView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(presenter.users[indexPath.row].id)
    }
}

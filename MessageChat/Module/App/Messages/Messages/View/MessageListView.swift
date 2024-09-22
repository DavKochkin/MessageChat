//
//  MessageListView.swift
//  MessageChat
//
//  Created by David Kochkin on 02.09.2024.
//

import UIKit

protocol MessageListViewProtocol: AnyObject {
    
}

class MessageListView: UIViewController, MessageListViewProtocol {
    
    var presenter: MessageListViewPresenter!
    
    lazy var tableView: UITableView = {
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        $0.dataSource = self
        $0.delegate   = self
        return $0
    }(UITableView(frame: view.bounds, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        view.addSubview(tableView)
    }
    
}


extension MessageListView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
    
}

extension MessageListView: UITableViewDelegate {
    
}

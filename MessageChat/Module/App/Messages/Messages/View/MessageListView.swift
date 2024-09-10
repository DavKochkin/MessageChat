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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
}

//
//  MessengerView.swift
//  MessageChat
//
//  Created by David Kochkin on 23.09.2024.
//

import UIKit
import MessageKit

protocol MessengerViewProtocol: AnyObject {
    
}

class MessengerView: MessagesViewController, MessengerViewProtocol {
    var presenter: MessengerPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = presenter.title
    }
}

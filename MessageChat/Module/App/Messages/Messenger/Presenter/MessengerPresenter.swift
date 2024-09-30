//
//  MessengerPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 23.09.2024.
//

import UIKit
import MessageKit

protocol MessengerPresenterProtocol: AnyObject {
    var title: String { get set }
    
}

class MessengerPresenter: MessengerPresenterProtocol {

    weak var view: MessengerViewProtocol?
    private var convoId: String
    var title: String
    private var otherId: String
    
    private lazy var selfSender = Sender(senderId: "1", displayName: "David")
    private lazy var otherSender = Sender(senderId: otherId, displayName: "Robert")
    
    init(view: MessengerViewProtocol?, convoId: String, otherId: String, name: String) {
        self.view    = view
        self.convoId = convoId
        self.title   = name
        self.otherId = otherId
    }
}

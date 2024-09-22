//
//  MessageListViewPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 10.09.2024.
//

import UIKit

protocol MessageListViewPresenterProtocol: AnyObject {
    var chatList: [ChatItem] { get set }
}

class MessageListViewPresenter: MessageListViewPresenterProtocol {
    var chatList: [ChatItem]
    
    weak var view: MessageListViewProtocol?
    
    init(view: MessageListViewProtocol?) {
        self.view = view
        self.chatList = ChatItem.mockData()
    }
    
}

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

class MessengerView: MessagesViewController, MessengerViewProtocol, MessagesLayoutDelegate {
    var presenter: MessengerPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = presenter.title
    }
    
    private func messengerSsetup() {
        messagesCollectionView.messagesDataSource     = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messageCellDelegate    = self
    }
}


extension MessengerView: MessagesDataSource {
    var currentSender: SenderType {
        presenter.selfSender
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessageKit.MessagesCollectionView) -> any MessageKit.MessageType {
        presenter.messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessageKit.MessagesCollectionView) -> Int {
        presenter.messages.count
    }
}

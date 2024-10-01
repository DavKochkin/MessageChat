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
        showMessageTimestampOnSwipeLeft = true
        messengerSetup()
        messagesCollectionView.reloadData()
    }
    
    private func messengerSetup() {
        messagesCollectionView.messagesDataSource      = self
        messagesCollectionView.messagesLayoutDelegate  = self
        messagesCollectionView.messagesDisplayDelegate = self
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

extension MessengerView: MessagesDisplayDelegate, MessagesLayoutDelegate {
//    func cellTopLabelHeight(for message: any MessageType, at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> CGFloat {
//        20
//    }
//    
    func messageTopLabelHeight(for message: any MessageType, at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> CGFloat {
        10
    }
    
    func messageBottomLabelHeight(for message: any MessageType, at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> CGFloat {
        20
    }
    
    func backgroundColor(for message: any MessageType, at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> UIColor {
        message.sender.senderId == presenter.selfSender.senderId ? .black : .green
    }
    
    func messageTopLabelAttributedText(for message: any MessageType, at indexPath: IndexPath) -> NSAttributedString? {
        
        let name = message.sender.displayName
        return NSAttributedString(string: name,
                           attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
                                        NSAttributedString.Key.backgroundColor: UIColor.lightGray])
    }
    
    func messageBottomLabelAttributedText(for message: any MessageType, at indexPath: IndexPath) -> NSAttributedString? {
        
        let name = message.sentDate.description
        return NSAttributedString(string: name,
                           attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
                                        NSAttributedString.Key.backgroundColor: UIColor.lightGray])
    }

    func configureAvatarView(_ avatarView: AvatarView, for message: any MessageType, at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) {
        avatarView.initials = String(message.sender.displayName.first!)
        avatarView.backgroundColor = .blue
    }
}

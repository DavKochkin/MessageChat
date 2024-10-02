//
//  MessengerView.swift
//  MessageChat
//
//  Created by David Kochkin on 23.09.2024.
//

import UIKit
import MessageKit
import InputBarAccessoryView

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
        messageInputBar.delegate                       = self
    }
}

//MARK: - MessageDataSource

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
    
    private func insertMessage(_ message: Message) {
        presenter.messages.append(message)
        //Reload last section to update header/footer labels and insert a new one
        messagesCollectionView.performBatchUpdates({
            messagesCollectionView.insertSections(IndexSet(integer: presenter.messages.count - 1))
            if presenter.messages.count >= 2 {
                messagesCollectionView.reloadSections([presenter.messages.count - 2])
            }
        }, completion: {[weak self] _ in
            self?.messagesCollectionView.scrollToLastItem(animated: true)
        })
    }
}

//MARK: - MessagesDisplayDelegate, MessagesLayoutDelegate

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

//MARK: - InputBarAccessoryViewDelegate

extension MessengerView: InputBarAccessoryViewDelegate {
    func inputBar(_ inputBar: InputBarAccessoryView, didPressSendButtonWith text: String) {
        let message: Message = Message(sender: presenter.selfSender,
                                       messageId: UUID().uuidString,
                                       sentDate: Date(),
                                       kind: .text(text))
        
        self.insertMessage(message)
        inputBar.inputTextView.text = ""
    }
}

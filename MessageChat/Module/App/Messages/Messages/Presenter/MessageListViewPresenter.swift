//
//  MessageListViewPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 10.09.2024.
//

import UIKit

protocol MessageListViewPresenterProtocol: AnyObject {
    
}

class MessageListViewPresenter: MessageListViewPresenterProtocol {
    
    weak var view: MessageListViewProtocol?
    
    init(view: MessageListViewProtocol?) {
        self.view = view
    }
    
}

//
//  MessengerPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 23.09.2024.
//

import UIKit
import MessageKit

protocol MessengerPresenterProtocol: AnyObject {
    
}

class MessengerPresenter: MessengerPresenterProtocol {
    weak var view: MessengerViewProtocol?
    private var convoId: String
    
    init(view: MessengerViewProtocol?, convoId: String, otherId: String) {
        self.view    = view
        self.convoId = convoId
    }
}



//
//  TabBarPresenter.swift
//  MessageChat
//
//  Created by David Kochkin on 17.08.2024.
//

import UIKit

protocol TabBarPresenterProtocol: AnyObject {
    init(view: TabBarViewProtocol)
}

class TabBarPresenter: TabBarPresenterProtocol {
    weak var view: TabBarViewProtocol?
 
    required init(view: any TabBarViewProtocol) {
        self.view = view 
        
        setupControllers()
    }

    
    private func setupControllers() {
        let messageList   = Builder.getMessageListView()
        messageList.title = .localized("tabMessages")
        messageList.tabBarItem.image = UIImage(systemName: "rectangle.3.group.bubble")
        
        let userList    = Builder.getUserListView()
        userList.title  = .localized("tabUsers")
        userList.tabBarItem.image = UIImage(systemName: "person.3")
        
        view?.setControllers(views:  [userList, messageList])
    }
    
    
}

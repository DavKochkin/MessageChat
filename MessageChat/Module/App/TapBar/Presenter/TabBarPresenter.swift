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
    }
}

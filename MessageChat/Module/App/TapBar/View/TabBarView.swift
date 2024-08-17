//
//  TabBar.swift
//  MessageChat
//
//  Created by David Kochkin on 16.08.2024.
//

import UIKit

protocol TabBarViewProtocol: AnyObject {
//    func setControllers()
}

class TabBarView: UITabBarController, TabBarViewProtocol {
    
    var presenter: TabBarPresenter! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setControllers(views: [UIViewController]) {
        tabBarController?.setViewControllers(views, animated: false)
    }
}

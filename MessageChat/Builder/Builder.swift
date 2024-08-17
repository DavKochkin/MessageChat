//
//  Builder.swift
//  MessageChat
//
//  Created by David Kochkin on 07.07.2024.
//

import UIKit


class Builder {
    
    static func getAuthView() -> UIViewController {
        let view = AuthView()
        let presenter = AuthViewPresenter(view: view)
        
        view.presenter = presenter
        
        return view 
    }
    
    static func getRegView() -> UIViewController {
        let view = RegView()
        let presenter = RegViewPresenter(view: view)
        
        view.presenter = presenter
        
        return view
    }
    
    
    static func getTabView() -> UIViewController {
        let view = TabBarView()
        let presenter = TabBarPresenter(view: view)
        
        view.presenter = presenter
        
        return view
    }
}

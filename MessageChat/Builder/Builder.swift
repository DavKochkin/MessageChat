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
    
}

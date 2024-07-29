//
//  RegViewPresenter .swift
//  MessageChat
//
//  Created by David Kochkin on 29.07.2024.
//

import UIKit

protocol regViewPresenterProtocol: AnyObject {
    init(view: RegViewProtocol)
}

class RegViewPresenter: regViewPresenterProtocol {
    weak var view: RegViewProtocol?
    
    
    required init(view: any RegViewProtocol) {
        self.view = view
    }
}

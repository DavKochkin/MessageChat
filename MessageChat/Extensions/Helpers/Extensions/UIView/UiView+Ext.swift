//
//  UiView+Ext.swift
//  MessageChat
//
//  Created by David Kochkin on 23.07.2024.
//

import UIKit


extension UIView {
    func addSubviews(_ views: UIView ...) {
        views.forEach{
            self.addSubview($0)
        }
    }
}

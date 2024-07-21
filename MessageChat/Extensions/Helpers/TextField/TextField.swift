//
//  TextField.swift
//  MessageChat
//
//  Created by David Kochkin on 21.07.2024.
//

import UIKit

class TextField: UITextField {
    
    var fieldPlaceholder: String
    var isPassword: Bool
    
    override init(frame: CGRect = .zero, fieldPlaceholder: String, isPassword: Bool = false) {
      
        self.fieldPlaceholder = fieldPlaceholder
        self.isPassword = isPassword
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        setupTextField()
    }
    
    private func setupTextField() {
        placeholder = fieldPlaceholder
        isSecureTextEntry = isPassword
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

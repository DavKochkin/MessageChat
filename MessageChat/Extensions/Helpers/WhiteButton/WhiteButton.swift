//
//  WhiteButton.swift
//  MessageChat
//
//  Created by David Kochkin on 24.07.2024.
//

import UIKit

class WhiteButton: UIButton  {
    
    var buttonText: String
    var completion: () -> Void
    
    
    init(buttonText: String, completion: @escaping () -> Void) {
        self.buttonText = buttonText
        self.completion = completion
        super.init(frame: .zero)
        setupButton()
    }
    
    private func setupButton() {
        addAction(UIAction(handler: { [weak self]_ in
            guard let self = self else { return }
            completion()
        }), for: .touchUpInside)
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(buttonText, for: .normal)
        backgroundColor = .white
        setTitleColor(.black, for: .normal)
        layer.cornerRadius = 10 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

//
//  String+Ext.swift
//  MessageChat
//
//  Created by David Kochkin on 21.07.2024.
//

import Foundation

extension String {
    static func localized(_ text: String.LocalizationValue) -> String {
        String(localized: text)
    }
}

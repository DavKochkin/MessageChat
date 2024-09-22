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

//MARK: - UserInfo Keys
extension String {
    static let state = "state"
}


extension String {
    func truncate(to limit: Int, ellipsis: Bool = true) -> String {
        if count > limit {
            let truncated = String(prefix(limit)).trimmingCharacters(in: .whitespacesAndNewlines)
            return ellipsis ? truncated + "\u{2026}" : truncated
        } else {
            return self
        }
    }
}

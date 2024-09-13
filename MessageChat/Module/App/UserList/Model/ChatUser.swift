//
//  User.swift
//  MessageChat
//
//  Created by David Kochkin on 11.09.2024.
//

import Foundation

struct ChatUser {
    let id:   String
    let name: String
    
    static func mockData() -> [ChatUser] {
        [
            ChatUser(id: UUID().uuidString, name: "User 1"),
            ChatUser(id: UUID().uuidString, name: "User 2"),
            ChatUser(id: UUID().uuidString, name: "User 3"),
            ChatUser(id: UUID().uuidString, name: "User 4"),
            ChatUser(id: UUID().uuidString, name: "User 5"),
            ChatUser(id: UUID().uuidString, name: "User 6"),
        ]
    }
}

//
//  User.swift
//  MessageChat
//
//  Created by David Kochkin on 11.09.2024.
//

import Foundation

struct User {
    let id:   String
    let name: String
    
    static func mockData() -> [User] {
        [
            User(id: UUID().uuidString, name: "User 1"),
            User(id: UUID().uuidString, name: "User 2"),
            User(id: UUID().uuidString, name: "User 3"),
            User(id: UUID().uuidString, name: "User 4"),
            User(id: UUID().uuidString, name: "User 5"),
            User(id: UUID().uuidString, name: "User 6"),
        ]
    }
}

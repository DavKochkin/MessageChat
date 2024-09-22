//
//  ChatItem.swift
//  MessageChat
//
//  Created by David Kochkin on 22.09.2024.
//

import Foundation

struct ChatItem {
    var id: String // convoID
    
    var name: String // chating name
    var otherUserId: String

    var date: Date
    var lastMessage: String
    
    static func mockData() -> [ChatItem]{
        [
            ChatItem(id: UUID().uuidString,
                     name: "User1",
                     otherUserId: UUID().uuidString,
                     date: Date(),
                     lastMessage: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            
            ChatItem(id: UUID().uuidString,
                     name: "User2",
                     otherUserId: UUID().uuidString,
                     date: Date(),
                     lastMessage: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            
            ChatItem(id: UUID().uuidString,
                     name: "User3",
                     otherUserId: UUID().uuidString,
                     date: Date(),
                     lastMessage: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            
            ChatItem(id: UUID().uuidString,
                     name: "User4",
                     otherUserId: UUID().uuidString,
                     date: Date(),
                     lastMessage: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            
        ]
    }
}

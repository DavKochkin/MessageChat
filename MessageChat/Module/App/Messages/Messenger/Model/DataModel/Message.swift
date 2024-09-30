//
//  Message.swift
//  MessageChat
//
//  Created by David Kochkin on 23.09.2024.
//

import MessageKit
import Foundation

struct Message: MessageType {
    var sender:    SenderType
    var messageId: String
    var sentDate:  Date
    var kind:      MessageKind
    
    static func mockData() -> [Message] {
        [
            Message(sender: Sender(senderId: "1", displayName: "David"),
                    messageId: UUID().uuidString,
                    sentDate: Date().addingTimeInterval(-1),
                    kind: .text("Where are you? I am searching for you. Are you at home?")),
            
            Message(sender: Sender(senderId: "2", displayName: "Robert"),
                    messageId: UUID().uuidString,
                    sentDate: Date().addingTimeInterval(-2),
                    kind: .text("Where are you? I am searching for you. Are you at home?2")),
            
            Message(sender: Sender(senderId: "1", displayName: "David"),
                    messageId: UUID().uuidString,
                    sentDate: Date().addingTimeInterval(-3),
                    kind: .text("Where are you? I am searching for you. Are you at home3?")),
            
            Message(sender: Sender(senderId: "2", displayName: "Robert"),
                    messageId: UUID().uuidString,
                    sentDate: Date().addingTimeInterval(-4),
                    kind: .text("Where are you? I am searching for you. ")),
        ]
    }
}


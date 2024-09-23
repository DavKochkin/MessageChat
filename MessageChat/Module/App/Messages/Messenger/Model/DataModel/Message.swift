//
//  Message.swift
//  MessageChat
//
//  Created by David Kochkin on 23.09.2024.
//

import MessageKit
import Foundation

struct Message: MessageType {
    var sender:    any MessageKit.SenderType
    var messageId: String
    var sentDate:  Date
    var kind:      MessageKit.MessageKind
}


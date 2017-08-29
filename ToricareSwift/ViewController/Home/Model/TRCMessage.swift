//
//  TRCMessage.swift
//  ToricareSwift
//
//  Created by tuan on 8/14/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

import Foundation

struct TRCMessage {
    var messageID = ""
    var memberID = ""
    var isRead = ""
    var message = ""
    var title = ""
    var sender = ""
    var updatedAt = ""
    var sentAt = ""
}

extension TRCMessage: JSONDecodable{
    init(_ decoder: JSONDecoder) throws {
        self.messageID = try decoder.value(forKey: ID)
        self.memberID = try decoder.value(forKey: SUMMARY_MEMBER_ID)
        self.isRead = try decoder.value(forKey: IS_READ)
        self.message = try decoder.value(forKey: MESSAGE)
        self.title = try decoder.value(forKey: TITLE)
        self.sender = try decoder.value(forKey: SENDER)
        self.updatedAt = try decoder.value(forKey: UPDATED_AT)
        self.sentAt = try decoder.value(forKey: SENT_AT)
    }
}


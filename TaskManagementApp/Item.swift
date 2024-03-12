//
//  Item.swift
//  TaskManagementApp
//
//  Created by Wanhar on 11/03/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

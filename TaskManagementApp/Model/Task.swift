//
//  Task.swift
//  TaskManagementApp
//
//  Created by Wanhar on 11/03/24.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    var id: UUID = .init()
    var taskTitle: String
    var creationDate: Date = .init()
    var isCompleted: Bool = false
    var tint: Color
}

var sampleTasks: [Task] = [
    .init(taskTitle: "Record Video", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1)
    .init(taskTitle: "Redesign Website", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1)
    .init(taskTitle: "Go far a walk", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1)
    .init(taskTitle: "Edit Video", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1)
    .init(taskTitle: "Publish VIdeo", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1)
    .init(taskTitle: "Tweet about new Video!", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1)
]

extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}

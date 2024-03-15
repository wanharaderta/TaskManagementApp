//
//  Task.swift
//  TaskManagementApp
//
//  Created by Wanhar on 11/03/24.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class Task: Identifiable {
    var id: UUID
    var taskTitle: String
    var creationDate: Date
    var isCompleted: Bool = false
    var tint: String
    
    init(id: UUID = UUID(), taskTitle: String, creationDate: Date = .init(), isCompleted: Bool = false, tint: String) {
        self.id = id
        self.taskTitle = taskTitle
        self.creationDate = creationDate
        self.isCompleted = isCompleted
        self.tint = tint
    }
    
    var tintColor: Color {
        return Color.simpleColor(tint)
    }
}

extension Color {
    static func simpleColor(_ value: String) -> Color {
        switch value {
        case "TaskColor1": return .taskColor1
        case "TaskColor2": return .taskColor2
        case "TaskColor3": return .taskColor3
        case "TaskColor4": return .taskColor4
        case "TaskColor5": return .taskColor5
        case "TaskColor6": return .taskColor6
        default:
            return .black
        }
    }
}

//var sampleTasks: [Task] = [
//    Task(taskTitle: "Record Video", creationDate: .updateHour(-5), isCompleted: true, tint: .yellow.opacity(0.8)),
//    Task(taskTitle: "Redesign Website", creationDate: .updateHour(-5), isCompleted: true, tint: .blue.opacity(0.8)),
//    Task(taskTitle: "Go for a walk", creationDate: .updateHour(-5), isCompleted: true, tint: .green.opacity(0.8)),
//    Task(taskTitle: "Edit Video", creationDate: .updateHour(-5), isCompleted: true, tint: .white),
//    Task(taskTitle: "Publish Video", creationDate: .updateHour(-5), isCompleted: true, tint: .pink.opacity(0.8)),
//    Task(taskTitle: "Tweet about new Video!", creationDate: .updateHour(-5), isCompleted: true, tint: .orange.opacity(0.8))
//]

extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}

extension Color {
    static var taskColor1: Color { Color.yellow.opacity(0.8) }
    static var taskColor2: Color { Color.blue.opacity(0.8) }
    static var taskColor3: Color { Color.green.opacity(0.8) }
    static var taskColor4: Color { Color.purple.opacity(0.8) }
    static var taskColor5: Color { Color.pink.opacity(0.8) }
    static var taskColor6: Color { Color.orange.opacity(0.8) }
}

//
//  Date+Extensions.swift
//  TaskManagementApp
//
//  Created by Wanhar on 11/03/24.
//

import Foundation

extension Date {
    /// Date Extensions Needed for Building UI
    func format(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    /// Fetching Week Based on given Date
    func fetchWeek(_ date: Date = .init()) -> [WeekDay] {
        let calendar = Calendar.current
        let startOfDate = calendar.startOfDay(for: date)
        
        var week: [WeekDay] = []
        let weekForDate = calendar.dateInterval(of: .weekOfMonth, for: startOfDate)
        guard let starOfWeek = weekForDate?.start else {
            return []
        }
        
        // Iterating to get the Full Week
        (0 ..< 7).forEach { index in
            if let weekDay = calendar.date(byAdding: .day, value: index, to: starOfWeek) {
                week.append(.init(date: weekDay))
            }
        }
        
        return week
    }
        
    struct WeekDay: Identifiable {
        var id: UUID = .init()
        var date: Date
    }
}

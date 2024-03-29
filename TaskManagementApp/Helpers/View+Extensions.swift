//
//  View+Extensions.swift
//  TaskManagementApp
//
//  Created by Wanhar on 11/03/24.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func hSpacing(_ aligment: Alignment) -> some View {
        self .frame(maxWidth: .infinity, alignment: aligment)
    }
    
    @ViewBuilder
    func vSpacing(_ aligment: Alignment) -> some View {
        self .frame(maxHeight: .infinity, alignment: aligment)
    }
    
    func isSameDate(_ date: Date, _ date2: Date) -> Bool {
        return Calendar.current.isDate(date, inSameDayAs: date2)
    }
}


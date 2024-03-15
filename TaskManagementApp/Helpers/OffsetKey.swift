//
//  OffsetKey.swift
//  TaskManagementApp
//
//  Created by Wanhar on 14/03/24.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
   
}

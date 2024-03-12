//
//  ContentView.swift
//  TaskManagementApp
//
//  Created by Wanhar on 11/03/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
   
    var body: some View {
       HomeView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.bg)
            .preferredColorScheme(.light)
    }

}

#Preview {
    ContentView()
}

//
//  HomeView.swift
//  TaskManagementApp
//
//  Created by Wanhar on 11/03/24.
//

import SwiftUI

struct HomeView: View {
    // Task manager properties
    @State private var currentDate: Date = .init()
    @State private var weekSlider: [Date.WeekDay] = []
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        })
    }
    
    @ViewBuilder
    func HeaderView() -> some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 5) {
                Text(currentDate.format("MMMM"))
                    .foregroundStyle(.darkBlue)
                
                Text(currentDate.format("YYYY"))
                    .foregroundStyle(.gray)
            }
            .font(.title.bold())
            
            Text(currentDate.formatted(date: .complete, time: .omitted))
                .font(.callout)
                .fontWeight(.semibold)
                .textScale(.secondary)
                .foregroundStyle(.gray)
            
            // Week Slider
            
        }
        .hSpacing(.leading)
        .overlay(alignment: .topLeading, content: {
            Button(action: {}, label: {
                Image(.pic)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipped()
            })
        })
        .padding(15)
        .hSpacing(.leading)
        .background(.white)
    }
}

#Preview {
    HomeView()
}

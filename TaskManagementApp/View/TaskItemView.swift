//
//  TaskItemView.swift
//  TaskManagementApp
//
//  Created by Wanhar on 15/03/24.
//

import SwiftUI

struct TaskItemView: View {
    
    @Bindable var task: Task
    
    var body: some View {
        HStack(alignment: .top, spacing: 15, content: {
            Circle()
                .fill(indicatorColor)
                .frame(width: 10, height: 10)
                .padding(2)
                .background(.white.shadow(.drop(color: .black.opacity(0.1),radius: 3)), in: .circle)
                .overlay(content: {
                    Circle()
                        .frame(width: 50, height: 50)
                        .blendMode(.destinationOver)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                task.isCompleted.toggle()
                            }
                        }
                })
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(task.taskTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .strikethrough(task.isCompleted, pattern: .solid, color: .black)
                
                Label(task.creationDate.format("hh:mm a"), systemImage: "clock")
                    .font(.caption)
                    .foregroundStyle(.black)
            })
            .padding(15)
            .hSpacing(.leading)
            .background(task.tintColor, in: .rect(topLeadingRadius: 15, bottomLeadingRadius: 15))
            .strikethrough(task.isCompleted, pattern: .solid, color: .black)
            .offset(y: -8)
            
        })
    }
    
    var indicatorColor: Color {
        if task.isCompleted {
            return .green
        }
        return task.creationDate.isSameHour ? .blue : (task.creationDate.isPastHour ? .red : .black)
    }
}

#Preview {
    ContentView()
}

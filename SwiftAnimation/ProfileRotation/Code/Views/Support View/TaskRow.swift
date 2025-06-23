//
//  TaskRow.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 18/05/25.
//

import SwiftUI

struct TaskRow: View {
    
    @State var task: Task
    
    var body: some View {
        HStack(spacing: 12){
            Button {
                withAnimation {
                    task.toggelTaskStatus()
                }
            } label: {
                Image(systemName: task.taskCompletionStaus ? "checkmark.square" : "square")
                    .font(.system(size: 28, weight: .semibold))
            }
            .buttonStyle(.plain)
            
            Text(task.taskName)
                .font(TypefaceOne.medium.font(size: 20))
                .colorMultiply(task.taskCompletionStaus ? Color.green : Color.white)
                .animation(.easeInOut(duration: 0.3).delay(0.05), value: task.taskCompletionStaus)
            Spacer()
        }
    }
}

#Preview {
    TaskRow(task: AppModel().tasks[0])
}

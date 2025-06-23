//
//  AppModel.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 16/05/25.
//

import Foundation

class AppModel: ObservableObject{
    let userName: String = "Harsh"
    let greeting: String = "Hello World!"
    
    var tasks: [Task] = [
        Task(id: 1, taskName: "Buy Some Books", taskCompletionStaus: false),
        Task(id: 2, taskName: "Get Some Groceries", taskCompletionStaus: false),
        Task(id: 3, taskName: "Make Some Coffee", taskCompletionStaus: false),
        Task(id: 4, taskName: "Go out in the Evening", taskCompletionStaus: false),
    ]
}

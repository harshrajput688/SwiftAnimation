//
//  Task.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 16/05/25.
//

import Foundation
struct Task: Identifiable{
    var id: Int
    var taskName: String
    var taskCompletionStaus: Bool
    
    mutating func toggelTaskStatus(){
        taskCompletionStaus.toggle()
    }
}

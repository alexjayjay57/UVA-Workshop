//
//  File.swift
//  ToDoList
//
//  Created by Jordanne Alexander on 10/24/23.
//

import SwiftUI

// Exercise 0:
struct Task2 {
    var title: String
    var completed: Bool

    //Exercise 1:
    var descrtiption: String {
         return "Task: " + title + " " + (completed ? "✅" : "❌ ")
    }
}
//Save for later
//var task1 = Task(title: "Buy Cat Food", completed: true)
//var task2 = Task(title: "Buy Cat Bed", completed: true)
//var task3 = Task(title: "Get the cat", completed: false)

//Exercise 2:

struct TaskListView2: View {
    var task: String = "Get da cat"
    
    var body: some View {
        Text(task)
    }


}


//
//  ContentView.swift
//  ToDoList
//
//  Created by Jordanne Alexander on 10/24/23.
//

import SwiftUI
//Exercise 1: Structs and Variables

struct Task {
    var title: String
    var completed: Bool
    
    //Exercise 2: Computed Variables:
        // 1. Extend the task class
        // 2. Add it within the class
    var description: String {
        // Returning the task with the title and whether ot not its completed (based on the bool provided)
        return "Task: " + title + " " + (completed ? "✅" : "❌ ")
        
    }
}



// Examples of what defining a Task looks likes :)
// We'll use these later on!
var task1 = Task(title: "Do Laundry", completed: true)
var task2 = Task(title: "Go To WT Workshop!", completed: true)
var task3 = Task(title: "Do Homework", completed: false)



//Exercise 3: Building a View!
//Exercise 4: building a view FR
    // Adding the View keyword creates an actual view that can be used to display our to do list
struct TaskListView: View {
    //Creating an instance of a Task
    @State var tasks: [Task]
    @State var newTaskButton: String = ""
    
    // Now we need to actually display the list of tasks we created earlier!
    // Adding this piece creates the view that we're wanting.
    // We can also add some cool customizations to it, which we can do later on!
    
    var body: some View {
        // RAZZLE DAZZL PT 2: VStacks/HStacks
        VStack{
            
            List {
                ForEach(tasks, id: \.description) {
                    task in
                    // Adding fonts and colors
                    Text(task.description)
                        .font(.headline)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                }
                
                
            }
            
            TextField("New Task", text: $newTaskButton).font(.headline)
            
            // RAZZLE DAZZLE TIME: Let's Add a Button!
            Button(action: {  if !newTaskButton.isEmpty {
                tasks.append(Task(title: newTaskButton, completed: false))
                newTaskButton = ""
            }
            }) {
                Text("Add Task").font(.headline)
                
            }
        }
    
        
    }
   
}



// Where the MAGIC HAPPENS!!
struct ContentView: View {
    // Add all the tasks to an Array that will be displayed in our view
  var tasks = [  Task(title: "Do Laundry", completed: true),
    Task(title: "Go To WT Workshop!", completed: true),
    Task(title: "Do Homework", completed: false)
    ]
    var body: some View {
        // Final touch! Adding your view to the content view for the simulator!
        TaskListView(tasks: tasks)
    }
}

#Preview {
    ContentView()
}

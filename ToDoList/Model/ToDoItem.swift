//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-13.
//

import SwiftData

@Model
class ToDoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let firstItem = ToDoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = ToDoItem(title: "Finish Computer Science assignment", done: true)

let thirdItem = ToDoItem(title: "Go for a run aorund campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem,
]

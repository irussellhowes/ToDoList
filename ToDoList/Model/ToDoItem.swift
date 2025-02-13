//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-13.
//

import Foundation

struct ToDoItem: Identifiable {
    let id = UUID ()
    var title: String
    var done: Bool
}

let firstItem = ToDoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = ToDoItem(title: "Finish Computer Science assignment", done: true)

let thirdItem = ToDoItem(title: "Go for a run aorund campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem,
]

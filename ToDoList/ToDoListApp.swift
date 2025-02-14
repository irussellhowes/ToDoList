//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-12.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}

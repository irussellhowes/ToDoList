//
//  LandingView.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-12.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    //Item being added
    @State var newItemDescription = ""
    
    //serach text
    @State var searchText = ""
    
    // List of to-do items
    @State var todos: [ToDoItem] = exampleItems
    
    // MARK: Computed properties
    
    var body: some View {
        NavigationView{
            VStack {
                List($todos) {$todo in
                    ItemView(currentItem: todo)
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: { delete(todo)
                                }
                            )
                        }
                        .onTapGesture {
                            todo.done.toggle()
                        }
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription )
                    Button("Add"){
                        createToDo(withTitle: newItemDescription)
                    }
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(28)
            }
            .navigationTitle("To Do")
        }
    }
    
    func createToDo(withTitle title: String) {
        
        let todo = ToDoItem(
            title: title,
            done: false
        )
        
        todos.append(todo)
    }
    
    func delete(_ todo: ToDoItem) {
        todos.removeAll { currentItem in currentItem.id == todo.id}
    }
    
}
#Preview {
    LandingView()
}

//
//  LandingView.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-12.
//

import SwiftUI
import SwiftData

struct LandingView: View {
    
    // MARK: Stored properties
    
    //Item being added
    @State var newItemDescription = ""
    
    //serach text
    @State var searchText = ""
    
    // Acess the model context
    @Environment(\.modelContext) var modelContext
    
    // List of to-do items
    @Query var todos: [ToDoItem]
    
    // MARK: Computed properties
    
    var body: some View {
        NavigationView{
            VStack {
                List {
                ForEach(todos) {todo in
                    
                    ItemView(currentItem: todo)
                }
                .onDelete(perform: removeRows)
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
        
        modelContext.insert(todo)
    }
    
    func removeRows( at offsets: IndexSet) {
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
    
}
//#Preview {
    //LandingView()
//}


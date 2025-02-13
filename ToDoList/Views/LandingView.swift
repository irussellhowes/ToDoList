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
                
                List{
                    List(todos) { todo in
                        ItemView(currentItem: firstItem)
                        ItemView(currentItem: secondItem)
                        ItemView(currentItem: thirdItem)
                        ItemView(currentItem: todo)
                    }
                    .searchable(text: $searchText)
                    HStack{
                        TextField("Enter a to-do item", text: $newItemDescription )
                        Button("Add"){
                            //Add the new to-do item
                        }
                    }
                    .padding(28)
                }
                .navigationTitle("To Do")
            }
        }
    }
}
#Preview {
    LandingView()
}

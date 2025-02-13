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
    
    
    // MARK: Computed properties
    
    var body: some View {
        NavigationView{
            
            
            VStack {
                
                
                List {
                    Label(
                        title: {
                            Text("Study for Chemistry quiz")
                        }, icon:{
                            Image(systemName: "circle")
                        }
                    )
                    Label(
                        title: {
                            Text("Finish Computer Science assignment")
                        }, icon:{
                            Image(systemName: "circle")
                        }
                    )
                    Label(
                        title: {
                            Text("Go for a run around campus")
                        }, icon:{
                            Image(systemName: "circle")
                        }
                    )
                    
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

#Preview {
    LandingView()
}

//
//  LandingView.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-12.
//

import SwiftUI

struct LandingView: View {
    
// MARK: Stored properties
    
    
    
// MARK: Computed properties
    
    var body: some View {
        NavigationView{
            
            
            VStack {
                
                
                List {
                    
                    Text("Study for Chemistry quiz")
                    Text("Finish Computer Science assignment")
                    Text("Go for a run around campus")
                    
                }
                
            
            }
            .navigationTitle("To Do")
        }
    }
}

#Preview {
    LandingView()
}

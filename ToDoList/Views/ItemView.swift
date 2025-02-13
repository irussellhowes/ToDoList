//
//  ItemView.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-13.
//

import SwiftUI

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {
                Text(title)
            }, icon:{
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

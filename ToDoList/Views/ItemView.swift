//
//  ItemView.swift
//  ToDoList
//
//  Created by Isla Russell-Howes on 2025-02-13.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: ToDoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            }, icon:{
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: firstItem)
    }
}


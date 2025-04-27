//
//  ListRowView.swift
//  TodoApp
//
//  Created by Aditya Chaurasia on 25/04/25.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
        
    }
}

#Preview {
    
    var item1 = ItemModel(title: "Item 1", isCompleted: true)
    var item2 = ItemModel(title: "Item 2", isCompleted: false)
    var item3 = ItemModel(title: "Item 3", isCompleted: true)
    
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
        ListRowView(item: item3)
    }
}

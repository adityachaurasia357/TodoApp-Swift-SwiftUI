//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Aditya Chaurasia on 25/04/25.
//

import SwiftUI

@main
struct TodoAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}

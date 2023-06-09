//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Dmitri Morozov on 5/26/23.
//

import SwiftUI

/*
 MVVM Architecture
 Model - data point
 View - UI
 ViewModel - manages Models of View
 */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    @State private var showLaunchView: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                
                NavigationView {
                    ListView()
                } //for ipad view compatibility
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(listViewModel)
                
                ZStack{
                    if showLaunchView == true {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }.zIndex(2.0)
            }
        }
    }
}

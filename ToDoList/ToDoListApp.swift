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
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}

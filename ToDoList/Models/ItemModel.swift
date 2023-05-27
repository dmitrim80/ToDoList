//
//  ItemModel.swift
//  ToDoList
//
//  Created by Dmitri Morozov on 5/26/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}

//
//  Data.swift
//  BeginnerProject-2Task
//
//  Created by Wesley Patterson on 3/27/22.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()
}

class TaskStore: ObservableObject {
     @Published var tasks = [Task]()
}

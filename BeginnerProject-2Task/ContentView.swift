//
//  ContentView.swift
//  BeginnerProject-2Task
//
//  Created by Wesley Patterson on 3/27/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var taskStore = TaskStore()
    
    @State var newTodo : String = ""
    
    var searchBar : some View {
        HStack {
            TextField("Enter Text", text:
                        self.$newTodo)
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                List(self.taskStore.tasks) { task in
                    
                    
                }
                .navigationBarTitle("Tasks")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

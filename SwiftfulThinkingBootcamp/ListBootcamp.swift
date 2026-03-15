//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/15.
//

import SwiftUI

struct ListBootcamp: View {

    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]

    var body: some View {

         NavigationView {
             List {
                 Section(content: {
                     ForEach(fruits, id: \.self) { data in
                         Text(data.capitalized)
                     }
                     .onDelete(perform: delete)
                     .onMove(perform: move)
                 }, header: {
                     HStack {
                         Text("Fruits")
                         Image(systemName: "flame.fill")
                     }
                     .font(.headline)
                     .foregroundStyle(Color.orange)
                 })

                     
                 
                 
                 Section("Veggies") {

                     ForEach(veggies, id: \.self) { data in
                         Text(data.capitalized)
                     }
                 }
                 
                 
             }
             .accentColor(.purple)
//             .listStyle(SidebarListStyle())
             .navigationTitle("Grocery List")
             .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
             )
             
         }
         .accentColor(Color.red)
     }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }

    func delete(indeSet: IndexSet) {
        fruits.remove(atOffsets: indeSet)
    }
    
    func move(from: IndexSet, to: Int) {
        fruits.move(fromOffsets: from, toOffset: to)
    }
    
    func add() {
        fruits.append("Cocount")
    }
    
}

#Preview {
    ListBootcamp()
}

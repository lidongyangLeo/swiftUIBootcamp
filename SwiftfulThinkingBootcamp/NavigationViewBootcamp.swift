//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/15.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Navigation Link ", destination: {
//                    Text("Second view")
                    MySecondView()
                })
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    HStack {
//                        Image(systemName: "person.fill")
                        NavigationLink {
                            Text("sssss")
                        } label: {
                            Image(systemName: "person.fill")
                        }

                        Image(systemName: "flame.fill")
                    },
//                trailing: Image(systemName: "gear")
                trailing: NavigationLink(destination: {
                    MySecondView()
                }, label: {
//                    Text("Navigation")
                    Image(systemName: "gear")
                }).accentColor(.red)
            )
        }
       
    }
}

struct MySecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Second view")
                .navigationBarHidden(true)
            VStack {
                Button("Back button") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}

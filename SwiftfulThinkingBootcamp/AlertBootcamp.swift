//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/16.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
        
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("This is the title"),
            message: Text("This is the message"),
            primaryButton: .destructive(Text("DELETE"), action: {
                backgroundColor = Color.green
            }),
            secondaryButton: .cancel())
        //            Alert(title: Text("This is alert message"))
    }
}

#Preview {
    AlertBootcamp()
}

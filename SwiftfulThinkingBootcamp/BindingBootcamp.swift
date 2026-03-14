//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/14.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = Color.green
    var body: some View {

        ZStack {
            backgroundColor.ignoresSafeArea()
            ButtonView(backgroundColor: $backgroundColor)
            
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    var body: some View {
        Button {
            backgroundColor = .orange
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
        }

    }
}

#Preview {
    BindingBootcamp()
}

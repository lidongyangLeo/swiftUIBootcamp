//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/15.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
                
            }
            .sheet(isPresented: $showSheet) {
                Text("This is sheet")
                SecondView()
            }

        }
    }
}

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
                
                
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}

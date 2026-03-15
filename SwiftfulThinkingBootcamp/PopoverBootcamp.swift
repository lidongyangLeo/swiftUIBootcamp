//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/15.
//

import SwiftUI


// sheets
// animations
// transitions


struct PopoverBootcamp: View {
    @State var showScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack {
                Button("Button") {
                    showScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showScreen) {
//                NewScreen()
//            }
            // METHOD 2 - TRANSITONS
//            ZStack {
//                if (showScreen) {
//                    NewScreen(showScreen: $showScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: showScreen)
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showScreen: $showScreen)
                .padding(.top, 100)
                .offset(y: showScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showScreen)
            
 
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            Button {
//                presentationMode.wrappedValue.dismiss()
                showScreen.toggle()
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
    PopoverBootcamp()
}

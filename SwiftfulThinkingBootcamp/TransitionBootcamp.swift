//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/15.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .animation(.easeInOut, value: showView)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}

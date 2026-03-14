//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/14.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimation: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                isAnimation.toggle()
//                withAnimation(.default) {
//                    isAnimation.toggle()
//                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimation ? 50.0: 25.0)
                .fill(isAnimation ? Color.red : Color.green)
                .frame(
                    width: isAnimation ? 100: 300,
                    height: isAnimation ? 100: 300)
                .rotationEffect(Angle.degrees(isAnimation ? 300 : 0))
                .offset(y: isAnimation ? 300 : 0)
                .animation(.default.repeatForever(autoreverses: true), value: isAnimation)
            Spacer()
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.blue)
                .frame(width: isAnimation ? 350 : 50, height: 100)
                .animation(Animation.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0
                ), value: isAnimation)
            
        }
    }
}

#Preview {
    AnimationBootcamp()
}

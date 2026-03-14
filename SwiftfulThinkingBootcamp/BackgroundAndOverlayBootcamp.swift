//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/8.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient.init(colors: [Color(Color.purple), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100,height: 100)
                    .shadow(color: Color.purple, radius: 10, x: 0.0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text("35")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            }
                            .shadow(color: Color.purple, radius: 10, x: 5, y: 5)
                        
                    })
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}

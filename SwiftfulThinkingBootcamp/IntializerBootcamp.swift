//
//  IntializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/8.
//

import SwiftUI

struct IntializerBootcamp: View {
    let backgroundColor: Color
    let value: Int
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text("Apples")
                .font(.headline)
                .foregroundStyle(.white)
            
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    IntializerBootcamp(backgroundColor: .blue, value: 6)
}

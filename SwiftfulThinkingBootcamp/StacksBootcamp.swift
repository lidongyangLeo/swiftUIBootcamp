//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/8.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack(alignment: .center, spacing: nil) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
        }
    }
}

#Preview {
    StacksBootcamp()
}

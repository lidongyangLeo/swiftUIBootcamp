//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 李冬阳 on 2026/3/21.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...",
                          text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundStyle(.red)
                .font(.headline)
                
                Button {
                    if (textIsAppropriate()) {
                        saveText()
                    }
                    
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth:.infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.headline)
                    
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp !")
            
        }
    }
    
    func textIsAppropriate() -> Bool {
        if (textFieldText.count >= 3) {
            return true
        }
        return false
    }
    
    func saveText()  {
        if (textFieldText.count > 0) {
            dataArray.append(textFieldText)
        }
        textFieldText = ""
    }
    
}

#Preview {
    TextfieldBootcamp()
}

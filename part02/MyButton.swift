//
//  MyButton.swift
//  iOS_SwiftUI
//
//  Created by 김다희 on 1/10/24.
//

import SwiftUI

struct MyButton: View {
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(10)
        })
    }
}

#Preview {
    MyButton(buttonTitle: "Button 4", buttonColor: .brown)
}

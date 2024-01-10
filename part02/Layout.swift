//
//  Layout.swift
//  iOS_SwiftUI
//
//  Created by 김다희 on 1/10/24.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            MyText(font: .headline, text: "Text Element 1")
            MyText(font: .subheadline, text: "Text Element 2")
            MyText(font: .body, text: "Text Element 3")
            
            HStack {
//                Button(action: {
//                    
//                }, label: {
//                    Text("Button 1")
//                        .padding()
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .cornerRadius(10)
//                })
                
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .green)
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            })
        }
    }
}

#Preview {
    Layout()
}

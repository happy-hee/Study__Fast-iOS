//
//  MyText.swift
//  iOS_SwiftUI
//
//  Created by 김다희 on 1/10/24.
//

import SwiftUI

struct MyText: View {
    var font: Font
    var text: String
    
    var body: some View {
        Text(text)
            .font(font)
            .padding()
    }
}

#Preview {
    MyText(font: .body, text: "My Text!")
}

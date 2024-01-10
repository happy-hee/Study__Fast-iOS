//
//  ContentView.swift
//  iOS_SwiftUI
//
//  Created by 김다희 on 1/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            // Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)
            Image(systemName: "globe")
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.yellow)
            Text("Hello!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

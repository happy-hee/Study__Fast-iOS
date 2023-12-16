//
//  ContentView.swift
//  Study_iOS
//
//  Created by 김다희 on 2023/12/14.
//

import SwiftUI

struct ContentView: View {
    var name: String = "Happy"
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(name)님 안녕하세요!")
            Text("\(name)님의 포인트는 333점 입니다.")
            Text("\(name)님 안녕히 가세요!")
            Text(name)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

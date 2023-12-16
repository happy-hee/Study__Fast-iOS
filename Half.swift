//
//  Half.swift
//  iOS_Study
//
//  Created by 김다희 on 12/16/23.
//

import SwiftUI

struct Half: View {
    
    // var name: String = "Happy"
    // var age: Int = 20
    
    var names: [String] = ["해피", "수하", "나기", "우윤", "루카스"]
    
    var body: some View {
//        VStack {
//            HStack {
//                Text("\(name) 입니다.")
//                Image(systemName: "pencil")
//            }
//        }
//        
//        Text("안녕하세요, \(age)살의 \(name)!")
        
        List {
            ForEach(names, id: \.self) { name in
                let welcome = sayHi(to: name)
                if name == "해피" {
                    Text("기다렸어요. \(welcome)")
                } else {
                    Text(welcome)
                }
                
            }
        }
    }
    
    func sayHi(to name: String) -> String {
        return "\(name)님 반갑습니다!"
    }
}

#Preview {
    Half()
}

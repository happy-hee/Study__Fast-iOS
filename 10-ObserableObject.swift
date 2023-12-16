//
//  Diff.swift
//  iOS_Study
//
//  Created by 김다희 on 12/17/23.
//

import SwiftUI

// 이 View에 있는 무언가가 바뀌어도 화면은 바뀌지 않는다. (struct)
struct Diff: View {
    // @ObservedObject : 관찰을 하고 있는 대상
    @ObservedObject var myKar = kar(name: "드림카2", owner: "happy2")
    
    // @State : 이 Struct가 새로 그려질 때 초기화 되지 않고 저장이 되어있음
    @State var name: String = ""
    
    var body: some View {
        Text("\(myKar.name)의 주인은 \(myKar.owner) 입니다")
        
        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)

        
        Button{
            let broCar = myKar
            broCar.name = "동생 차"
            broCar.owner = "동생"
            
            myKar.sayHi()
        } label: {
            Text("출발")
        }
    }
}

// ObservableObject : 관찰을 당하는 것이 가능한 대상
class kar: ObservableObject {
    // @Published : 쏘다, 배포하다
    @Published var name: String
    var owner: String
    
    func sayHi(){
        print("hi \(owner)")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

#Preview {
    Diff()
}

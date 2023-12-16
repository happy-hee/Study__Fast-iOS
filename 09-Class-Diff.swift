//
//  Diff.swift
//  iOS_Study
//
//  Created by 김다희 on 12/17/23.
//

import SwiftUI

struct Diff: View {
    let myCar = Car(name: "드림카", owner: "happy")
    let myKar = kar(name: "드림카2", owner: "happy2")
    
    var body: some View {
        Text("\(myCar.name)의 주인은 \(myCar.owner) 입니다")
        Text("\(myKar.name)의 주인은 \(myKar.owner) 입니다")
        
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

/**
 struct 와 class의 차이
    * struct: 값
    -> 엑셀 파일처럼  다른사람에게 그 파일을 복사해서 주면 그 파일을 수정했을 때에 그 사람의 파일만 수정됨
    * class: 주소
    -> 스프레드 시트처럼 다른사람에게 그 주소를 공유 해 줬을 시 한명이 수정을 하면 둘 다 수정됨
 */
struct Car {
    let name: String
    let owner: String
    
    func sayHi(){
        print("hi \(owner)")
    }
}

class kar {
    var name: String
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

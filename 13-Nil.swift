//
//  Nil.swift
//  iOS_Study
//
//  Created by 김다희 on 12/22/23.
//

import SwiftUI

struct Nil: View {
    
    var name: String = "Alban"
    // 옵셔널 -> 값이 있을 수도 있고 없을 수도 있다.
    // nil -> 없다
    var petName: String? // nil
    // var petName: String? = "coco" // Optional("coco")
    
    var name2: String = "Sonny"
    var petName2: String = "coco"
    
    var body: some View {
        VStack {
            // Text("이름은 \(name) 입니다.")
            // Error: petName 은 옵셔널 타입이다.
            // Text("이름은 \(name) 펫 네임은 \(petName)입니다.")
            Text("이름은 \(name2) 펫 네임은 \(petName2) 입니다.")
        }
        
        .onAppear {
            // print("이름은 \(name) 펫 네임은 \(petName)입니다.")
            // 이름은 Alban 펫 네임은 nil 입니다.
            
            print("이름은 \(name2) 펫 네임은 \(petName2)입니다.")
            // 이름은 Sonny 펫 네임은 coco 입니다.
        }
    }
}

#Preview {
    Nil()
}

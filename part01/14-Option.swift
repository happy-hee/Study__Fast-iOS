//
//  Option.swift
//  iOS_Study
//
//  Created by 김다희 on 12/22/23.
//

import SwiftUI

struct Option: View {
    
    var alban = People(name: "alban", mbti: MBTI(name: "ENFP"))
    var sonny = People(name: "sonny", petName: "coco")
    var fuwa = People(name: "fuwa", petName: "cookie")
    var kagami = People(name: "kagami")
    
    var body: some View {
        VStack {
//            if let petName = alban.petName {
//                Text("이름은 \(alban.name), 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(alban.name), 애완동물은 없습니다.")
//            }
            
            // 옵셔널 체이닝
            if let albanMbtiName = alban.mbti?.name {
                Text(albanMbtiName)
            } else {
                Text("No mbti name")
            }
            
            if let kagamiMbtiName = kagami.mbti?.name {
                Text(kagamiMbtiName)
            } else {
                Text("No mbti name")
            }
            
            if let petName2 = sonny.petName {
                Text("이름은 \(sonny.name), 애완동물 이름은 \(petName2)")
            } else {
                Text("이름은 \(sonny.name), 애완동물은 없습니다.")
            }
            
            if let petName3 = fuwa.petName {
                Text("이름은 \(fuwa.name), 애완동물 이름은 \(petName3)")
            } else {
                Text("이름은 \(fuwa.name), 애완동물은 없습니다.")
            }
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}

#Preview {
    Option()
}

//
//  Enum-Choice.swift
//  iOS_Study
//
//  Created by 김다희 on 12/17/23.
//

import SwiftUI

struct Enum_Choice: View {
    
    var direction: Derection = .north
    var member: Member = .arban
    var menu: Menu = .steak("레어")
    
    var body: some View {
        // Text("방향은 \(direction.rawValue)쪽 입니다")
        Text("제 이름은 \(member.rawValue)입니다")
    }
}

enum Member: String {
    case happy
    case sunny
    case arban = "알반"
    case suha
}

enum Menu {
    case pasta
    case pizza
    case steak(String) // 괄호로 연관된 값을 같이 넣어줄 수 있음
}

enum Derection: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Enum_Choice()
}

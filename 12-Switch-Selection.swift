//
//  Switch-Selection.swift
//  iOS_Study
//
//  Created by 김다희 on 12/17/23.
//

import SwiftUI

struct Switch_Selection: View {
    
    @State var myDirection: Direction = .northSouth
    
    var body: some View {
        
        VStack {
            switch myDirection {
            case .north:
                Text("북쪽 입니다.")
            case .west:
                Text("서쪽 입니다.")
            case .east:
                Text("동쪽 입니다.")
            case .south:
                Text("남쪽 입니다.")
            default:
                Text("에러 입니다.")
            }
            
            Button {
                myDirection = .east
            } label: {
              Text("동쪽으로 이동")
            }
        }
        

    }
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
    case northSouth
}

#Preview {
    Switch_Selection()
}

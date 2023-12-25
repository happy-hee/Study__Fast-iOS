//
//  Sample.swift
//  iOS_Study
//
//  Created by 김다희 on 12/22/23.
//

import SwiftUI

struct Sample: View {
    
    // Destination 를 사용해 데이터 만들기
    let data = [
        Destination(direction: .north,
                    food: "파스타 맛집",
                    image: Image(systemName: "carrot")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: "피자 맛집",
                    image: Image(systemName: "fork.knife")),
        Destination(direction: .south,
                    food: nil,
                    image: Image(systemName: "moonrise")),
    ]
    
    // 선택된 도착지는 있을 수도 있고, 없을 수도 있다.
    @State var selectedDestination: Destination?
    
    var body: some View {
        VStack {
            // 선택된 도착지가 있다면? 이미지 출력
            selectedDestination?.image
                .resizable() // 리사이즈가 가능하도록
                .scaledToFill() // 화면에 채우기
                .frame(width: 200, height: 200) // 사이즈
            
            // 도착지는 Optional 상태이므로 if let 을 통해 언바인딩
            if let destination = selectedDestination {
                // enum 을 사용한 방향
                Text(destination.direction.rawValue)
                
                // Destination의 food는 옵셔널이므로 if let 을 통해 언바인딩
                if let food = destination.food {
                 Text(food)
                }
            }
            
            
            Button(action: {
                selectedDestination = data.randomElement()
            }, label: {
                Text("돌려요!")
            })
        }
    }
}

struct Destination {
    let direction: Direction
    let food: String?
    let image: Image
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Sample()
}

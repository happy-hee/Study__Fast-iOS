//
//  MyCar.swift
//  iOS_Study
//
//  Created by 김다희 on 1/4/24.
//

import SwiftUI


// Protocol: 규약
protocol DriveAble { // 주행이 가능하다면 (이 프로토콜을 사용한다면)
    // 반드시 이 함수가 실행이 되어야 한다.
    func speedDown(with speed: Int) -> Int
}

struct MyCar: View {
    
    var myCar: KIA = KIA()
    var broCar: Hyundai = Hyundai()
    // 객체들이 같은 설계를 가지고 있다면 묶일 수 있다.
    var cars: [DriveAble] = [KIA(), Hyundai()]
    
    @State var speed: Int = 10
    
    var body: some View {
        VStack {
            Text("속도 : \(speed)")
            Button(action: {
                speed = myCar.speedDown(with: speed)
            }, label: {
                Text("감속!")
            })
        }
    }
}


// DriveAble 규약을 가진 KIA struct
struct KIA: DriveAble {
    // speedDown 은 필수 함수이다.
    func speedDown(with speed: Int) -> Int {
        print("속도가 감속합니다!")
        return speed - 5
    }
}

struct Hyundai: DriveAble {
    func speedDown(with speed: Int) -> Int {
        print("속도가 빠르게 감속합니다!")
        return speed - 8
    }
}

#Preview {
    MyCar()
}

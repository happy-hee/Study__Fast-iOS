//
//  Function.swift
//  Study_iOS
//
//  Created by 김다희 on 12/16/23.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        Text("Input number is \(inputNumber)")
        
        Button(action: {
            inputNumber = plusFive(with: inputNumber)
        }, label: {
            Text("+5")
        })
    }
    
    // input 이라는 변수에 담음
    // 밖에서 함수를 쓸 때는 with 라는 이름으로 사용 (선택적 사용)
    // : 가독성을 위해서
    
    // 형태:
    // func 함수이름 (입력받을값변수: 값타입) -> 반환할값이있다면타입 {}
    // 또는
    // func 함수이름 (밖에서불리길원하는이름 입력받을값변수: 값타입) -> 반환할값이있다면타입 {}
    func plusFive(with input: Int) -> Int {
        return input + 5
    }
}

#Preview {
    Function()
}

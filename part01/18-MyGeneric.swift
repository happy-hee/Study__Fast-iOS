//
//  MyGeneric.swift
//  iOS_Study
//
//  Created by 김다희 on 1/9/24.
//
/*
  generic
  타입에 의존하지 않는 범용 코드를 만들 때 사용한다.
  -> 어떤 타입이 들어와도 괜찮은 코드
  배열, set 딕셔너리
*/

import SwiftUI

struct MyGeneric: View {

    // @State : 이 Struct가 새로 그려질 때 초기화 되지 않고 저장이 되어있음
    @State var input = ""
    @State var myStack = MyStack<Int>()
    // @State var myFloatStack = MyStack<Float>() // 이런식으로 뒤의 type만 수정하면서 사용한다.

    var body: some View {
        VStack {
          TextFiled("숫자를 입력해주세요", text: $input)
          Button(
            // Int로 했을 경우 TextFiled에 9.9 이런식으로 소수를 넣었더니 에러가 남 (예외처리를 소수일 경우 0.0으로 작성해야 함)
            // => myFloatStack이라는 새로운 struct를 만들고 Int로 되어잇던 부분들을 Float으로 수정
            action: myStack.interValue(input: Int(input) ?? 0), 
            label: Text("저장")
          )
          Button(
            action: myStack.showData() , 
            label: Text("출력")
          )
        }
    }
}


// generic 이기때문에 타입에 상관 없이 동작
// T 부분에는 Type이 들어간다.
struct MyStack<T> { // generic
  // Array
  let data: [T] = []
  
  mutating func insertValue(input: T) {
    data.append(input)
  }

  func showData() {
    data.forEach{ item in
      print(item)
    }
  }
}

/*
  이런식으로 타입별(정수, 소수, ...)로 다 만들면 비효율적이기 때문에 이런 경우 generic을 사용한다.
*/
// struct MyStack { // 정수
//   // Array
//   let data: [Int] = []
  
//   mutating func insertValue(input: Int) {
//     data.append(input)
//   }

//   func showData() {
//     data.forEach{ item in
//       print(item)
//     }
//   }
// }

// struct MyFloatStack { // 소수점
//   let data: [Float] = []
  
//   mutating func insertValue(input: Float) {
//     data.append(input)
//   }

//   func showData() {
//     data.forEach{ item in
//       print(item)
//     }
//   }
// }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyGeneric()
    }
}

//
//  Exception.swift
//  iOS_Study
//
//  Created by 김다희 on 12/25/23.
//

import SwiftUI

struct Exception: View {
    
    @State var inputNumber = ""
    @State var resultNumber: Float = 0
    
    var body: some View {
        VStack {
            TextField("나눌 숫자를 입력해주세요", text: $inputNumber)
            Text("나눈 결과는 다음과 같아요 \(resultNumber)")
            Button(action: {
                // inputNumber 는 텍스트이기 떄문에 Float 으로 형변환
                // 숫자가 아닌 다른 값들이 들어올 수 있기때문에 통해 예외처리
                
                // 3) 에러 처리를 위해 do ~ catch, try 를 사용해서 에러를 잡늗다.
                do {
                    try resultNumber = devideTen(with: (Float(inputNumber) ?? 1.0))
                    
                // 0으로 나누었을 때의 예외 처리
                } catch DivideError.dividedByZero {
                    print("0으로 나누었습니다.")
                    resultNumber = 0
                } catch {
                    print(error.localizedDescription)
                }
            }, label: {
                Text("나누기")
            })
        }
    }
    
    // 이 함수는 뭔가를 던질 수 있는 것이라고 throws 를 통해 명시
    func devideTen(with inputNumber: Float) throws -> Float {
        var result: Float = 0
        
        if inputNumber == 0 {
            // 2) Error를 확인하고 실행
            throw DivideError.dividedByZero
        } else {
            result = 10 / inputNumber
        }
        
        return result
    }
}

// 1) Error 정의
enum DivideError: Error {
    case dividedByZero
}

#Preview {
    Exception()
}

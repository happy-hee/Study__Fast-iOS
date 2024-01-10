//
//  SimpleView.swift
//  iOS_SwiftUI
//
//  Created by 김다희 on 1/10/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        Image(systemName: "pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
        Text("헤드라인 입니다.")
            .font(.headline)
            .fontWeight(.bold)
            .padding()
        Text("서브 헤드라인 입니다.")
            .font(.subheadline)
            .padding()
        Text("바디 입니다")
            .font(.body)
            .padding()
        // .padding(.top, 10) // 위
        // .padding(.bottom, 10) // 아래
        
        /* 왜 left, right가 아닐까?
         국가별로 텍스트가 시작되는 지점이 다르기 때문에 이렇게 표시
         우리는 왼쪽 -> 오른쪽 이지만 어딘가에선 오른쪽 -> 왼쪽으로 글을 작성하기 때문
         */
        // .padding(.leading, 10) // 텍스트가 시작되는 지점
        // .padding(.trailing, 10) // 텍스트가 끝나는 지점
        // .padding(.vertical, 10) // top, bottom 둘 다
        // .padding(.horizontal, 10) // leading, trailing 둘 다
        Button(action: {}, label: {
            Text("Click Me")
        })
        .padding() //  -> 위치에 따라 다르게 동작하므로 상단에 올려야 한다.
        
        // 1. padding 이 생기고
        // 2. 그 안에 background 색상이 넣어짐
        // 3. 글자 색상이 달라짐
        .background(.blue)
        .foregroundColor(.white)
        // .padding() -> padding을 아래에서 추가하면 여백이 없는 채로 배경색이 들어가있다.
        
        .cornerRadius(10) // 가장자리 둥글게
        .bold()
        
        // * Modifier 의 순서는 굉장히 중요하다!! 전후 관계에 영향을 받는 것들은 순서에 따라서 다른 결과를 나타낼 수 있다! *
    }
}

#Preview {
    SimpleView()
}
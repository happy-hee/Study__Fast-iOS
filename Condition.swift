//
//  Condition.swift
//  Study_iOS
//
//  Created by 김다희 on 12/15/23.
//

import SwiftUI

struct Condition: View {
    
    var count = 4
    var hasLoggedIn = false
    
    var body: some View {
        
        // 참이면 실행해!
        if count > 4 {
            Text("숫자는 4보다 큽니다.")
        } else {
        // 참이 아니면 실행해!
            Text("숫자는 4보다 작거나 같습니다.")
        }
        
        // 참이 맞아? 아니면 못 들어가!!
        guard hasLoggedIn else {
            Text("로그인 하시겠습니까?")
        
        }
    }
}

#Preview {
    Condition()
}

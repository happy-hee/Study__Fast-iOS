//
//  Loop.swift
//  Study_iOS
//
//  Created by 김다희 on 12/16/23.
//

import SwiftUI

struct Loop: View {
    
    let names: [String] = ["나미", "슬기", "웬디", "클라라"]
    let fruits: [String] = ["사과", "귤", "딸기", "바나나", "수박"]
    
    var body: some View {
        
        VStack {
            ForEach(names, id: \.self) { item in
                Text(item)
            }
            ForEach(fruits, id: \.self) { item in
                Text(item)
            }
        }
        
    }
}

#Preview {
    Loop()
}

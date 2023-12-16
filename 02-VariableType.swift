//
//  VariableType.swift
//  Study_iOS
//
//  Created by 김다희 on 2023/12/14.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Happy"
    var age: Int = 20
    var height: Float = 169.9
    var weight: Double = 63.4
    var havePet: Bool = false
    
    var body: some View {
        VStack {
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

struct VariableType_Previews: PreviewProvider {
    static var previews: some View {
        VariableType()
    }
}

//
//  MyCollections.swift
//  Study_iOS
//
//  Created by 김다희 on 2023/12/14.
//

import SwiftUI

struct MyCollections: View {
    
    // Array
    // var foods = ["eggs", "bananas", "beans"]
    var foods: [String] = ["eggs", "bananas", "beans"]
    // Set
    var jazz: Set<String> = ["bibidudu", "lalala", "dududu"]
    var hiphop: Set<String> = ["bibidudu", "wow", "rap"]
    // Dic
    var koEngDict: [String:String] = ["사과" : "Apple", "바나나" : "Banana"]
    
    var body: some View {
        VStack {
            // Array
            Text(foods[0])
            
            // Set
            // intersection: 교집합
            Text(hiphop.intersection(jazz).description)
            
            // Dic
            Text(koEngDict["사과"]!)
        }
    }
}

struct MyCollections_Previews: PreviewProvider {
    static var previews: some View {
        MyCollections()
    }
}

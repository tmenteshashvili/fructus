//
//  FruitModel.swift
//  Fructus
//
//  Created by Tako Menteshashvili on 27.07.22.
//

import SwiftUI



struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
 
}

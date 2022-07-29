//
//  OnboardingView.swift
//  Fructus
//
//  Created by Tako Menteshashvili on 27.07.22.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = FruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
                
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
      
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 13 Pro")
    }
}

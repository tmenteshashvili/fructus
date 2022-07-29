//
//  FructusApp.swift
//  Fructus
//
//  Created by Tako Menteshashvili on 27.07.22.
//

import SwiftUI

@main
struct FructusApp: App {

    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
                
            } else {
                ContentView()
                
            }
        }
    }
}

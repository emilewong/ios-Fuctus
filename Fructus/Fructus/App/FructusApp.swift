//
//  FructusApp.swift
//  Fructus
//
//  Created by Emile Wong on 19/4/2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
              OnboardingView()
            }else{
              ContentView()
            }
            }
            
        }
    }


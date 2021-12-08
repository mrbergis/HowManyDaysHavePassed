//
//  HowManyDaysHavePassedApp.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 06.12.2021.
//

import SwiftUI

@main
struct HowManyDaysHavePassedApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                DateDaysView()
            }
        }
    }
}

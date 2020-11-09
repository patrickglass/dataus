//
//  datusApp.swift
//  datus
//
//  Created by Glass, Patrick on 2020-11-08.
//

import SwiftUI

@main
struct datusApp: App {
    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}

struct datusApp_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

//
//  OnboardingView.swift
//  datus
//
//  Created by Glass, Patrick on 2020-11-08.
//

import SwiftUI

struct OnboardingView: View {
    // PROPERTIES
    
    // BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                DatusCardView()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

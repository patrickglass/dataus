//
//  TitleModifier.swift
//  datus
//
//  Created by Glass, Patrick on 2020-11-08.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

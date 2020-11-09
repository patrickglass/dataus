//
//  CreateButtonView.swift
//  datus
//
//  Created by Glass, Patrick on 2020-11-08.
//

import SwiftUI

struct CreateButtonView: View {
    
    // PROPERTIES
    
    
    // BODY
    var body: some View {
        Button(action: {
            print("Create the database")
        }) {
            HStack(spacing: 8) {
                Text("Create")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        } //: BUTTON
        .accentColor(.white)
    }
}

// PREVIEW

struct CreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CreateButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

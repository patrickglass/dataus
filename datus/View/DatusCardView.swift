//
//  DatusCardView.swift
//  datus
//
//  Created by Glass, Patrick on 2020-11-08.
//

import SwiftUI

struct DatusCardView: View {
    
    // PROPERTIES
    @State private var isAnimating: Bool = false
    
    // BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // IMAGE
                Image("postgres")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // TITLE
                Text("Database")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.black.opacity(0.15), radius:2, x: 2, y: 2)
                
                // HEADLINE
                Text("Postgres is a great relational database and powers many of the greatest SAAS services.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON START
                CreateButtonView()
                
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueLight"), Color("ColorBlueDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    } //: VIEW
}

// PREVIEW
struct DatusCardView_Previews: PreviewProvider {
    static var previews: some View {
        DatusCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}

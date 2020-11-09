//
//  InfoView.swift
//  datus
//
//  Created by Glass, Patrick on 2020-11-08.
//

import SwiftUI

struct InfoView: View {
    
    // PROPERTIES
    
    // BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                
                Text("Datus")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.black.opacity(0.15), radius:2, x: 2, y: 2)
                
                Spacer(minLength: 10)
                
                Group {
                    Text("App Info")
                        .fontWeight(.black)
                        .modifier(TitleModifier())
                        .shadow(color: Color.black.opacity(0.15), radius:2, x: 2, y: 2)
                
                    VStack(alignment: .leading, spacing: 10) {
                        RowAppInfoView(name: "Application", value: "Datus")
                        RowAppInfoView(name: "Version", value: "0.1.0")
                        RowAppInfoView(name: "Author", value: "Patrick Glass")
                        RowAppInfoView(name: "Website", value: "https://github.com/patrickglass/datus")
                    } //: VSTACK
                }
                
                Spacer(minLength: 10)
                
                Group {
                    Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                    .shadow(color: Color.black.opacity(0.15), radius:2, x: 2, y: 2)
                
                    Text("Icons made by ")
                    Link("Freepik", destination: URL(string: "https://www.flaticon.com/authors/freepik")!)
                    Text(" from ")
                    Link("www.flaticon.com", destination: URL(string: "https://www.flaticon.com/")!)
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    print("Continue was pressed")
                }) {
                    Text("Continue".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Capsule().fill(Color.blue))
                        .foregroundColor(.white)
                } //: BUTTON
            } //: VSTACK
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        } //: SCROLLVIEW
    }
}

// PREVIEW
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct RowAppInfoView: View {
    
    // PROPERTIES
    var name: String
    var value: String
    
    // BODY
    var body: some View {
        VStack {
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                Text(value)
            } //: HSTACK
            Divider()
        } //: VSTACK
    }
}

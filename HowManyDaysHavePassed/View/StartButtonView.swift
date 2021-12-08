//
//  StartButtonView.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 08.12.2021.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: -PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: -BODY
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                    .foregroundColor(.gray)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    //.foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)

        } //: BUTTON
        .accentColor(Color.white)
    }
}
// MARK: -PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

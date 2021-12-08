//
//  OnboardingView.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 08.12.2021.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: -PROPERTIES
    @ObservedObject var onboardingVM = OnboardingViewModel()
    
    // MARK: -BODY
    var body: some View {
        TabView {
            ForEach(onboardingVM.quotes) {item in
                ZStack {
                    VStack(alignment: .center) {
                        Text(item.textRu)
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .lineSpacing(10)
                            .padding()
                            .rotation3DEffect(.degrees(50), axis: (x:1,y:0,z:0))
                            .shadow(color: .gray, radius: 2, x: 0, y: 15)
                        HStack {
                            Text(item.authorRu)
                                .foregroundColor(.gray)
                                .shadow(color: .gray, radius: 1, x: 0, y: 10)
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            StartButtonView()
                        }
                    } //: VSTACK
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .top, endPoint: .bottom))
                    
                } //: ZSTACK
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea(.all)
    }
}

// MARK: -PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingView()
                .preferredColorScheme(.dark)
            OnboardingView()
                .preferredColorScheme(.light)
        }
    }
}

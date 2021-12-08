//
//  MainView.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 08.12.2021.
//

import SwiftUI

struct MainView: View {
    // MARK: -PROPERTIES
    
    // MARK: -BODY
    var body: some View {
        TabView {
            DateDaysView()
                .tabItem {
                    Image(systemName: "clock")
                    Text("mainview_text_datedays")
                }
        } //: TAB
    }
}
// MARK: - PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

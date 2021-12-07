//
//  DateDaysView.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 06.12.2021.
//

import SwiftUI

struct DateDaysView: View {
    //MARK: - PROPERTIES
    @ObservedObject var dateVM = DateDaysViewModel()

    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center) {
            Form {
                HStack() {
                    Spacer()
                    Text("form-text-birhday")
                    Spacer()
                } //HSTACK
                DatePicker("", selection: $dateVM.birthdate, in: ...dateVM.dateOfOneDay, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())
            } //: FORM
            //ScrollView {
            Text("days_days_days")
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(dateVM.dates) { date in
                    HStack {
                        Text(date.name.localized)
                        Spacer()
                        Text("\(dateVM.numberOfDays(id: date.id))")
                    } //: HSTACK
                    .padding()
                } //: LOOP
            } //: SCROLL
            //} //: SCROLL
        } // VSTACK
    }
}
           
// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DateDaysView()
    }
}

//
//  DateViewModel.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 06.12.2021.
//

import SwiftUI

final class DateDaysViewModel: ObservableObject {
    
    @AppStorage("savedDate") var date = Date()
    
    @Published var dates: [DateDaysModel] = Bundle.main.decode("dateDays.json")
    @Published var birthdate: Date = Date() {
        didSet {
            date = birthdate
        }
    }
    
    init() {
        birthdate = date
    }
    

    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var dateOfOneDay = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    
    func numberOfDays(id: Int) -> Int{
        switch id {
        case 1: return Date().numberOfDays(birthdate)
        case 2: return Date().numberOfDays(Date().endOfYear())
        case 3: return Date().numberOfDays(Date().startOfYear())
        case 4: return Date().numberOfDays(Date().startOfMonth())
        case 5: return Date().numberOfDays(Date().endOfMonth())
        case 6: return Date().numberOfDays(Date().setAnUpcomingDate(month: 4, day: 12))
        default: return 0
        }
    }

}

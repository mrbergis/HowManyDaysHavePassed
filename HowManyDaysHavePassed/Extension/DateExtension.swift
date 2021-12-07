//
//  Date.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 07.12.2021.
//

import Foundation

extension Date: RawRepresentable {
    private static let formatter = ISO8601DateFormatter()

    public var rawValue: String {
        Date.formatter.string(from: self)
    }

    public init?(rawValue: String) {
        self = Date.formatter.date(from: rawValue) ?? Date()
    }
    
    func startOfYear() -> Date {
        return Calendar.current.date(byAdding:DateComponents(day: 1),
            to: Calendar.current.date(from: Calendar.current.dateComponents([.year], from: Calendar.current.startOfDay(for: self)))!
        )!
    }
    
    
    func endOfYear() -> Date {
        return Calendar.current.date(byAdding: DateComponents(year: 1,day: -1), to: self.startOfYear())!
    }
    
    func startOfMonth() -> Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self)))!
    }
    func endOfMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonth())!
    }
    
    // FIXME: - Потом исправить и подумать лучше!
    func numberOfDays(_ givenDate: Date) -> Int{
        if self > givenDate {
            return Calendar.current.dateComponents([.day], from: givenDate, to: self).day!
        } else {
            return Calendar.current.dateComponents([.day], from: self, to: givenDate).day!
        }
    }
    
    // FIXME: - Потом исправить и подумать лучше!
    func setAnUpcomingDate(month: Int, day: Int) -> Date {
        let components = Calendar.current.dateComponents([.year, .minute], from: self)
        
        if let year = components.year {
            var dateComponents = DateComponents(calendar: Calendar.current,year:  year, month: month, day: day)

            if let searchDate = Calendar.current.date(from: dateComponents) {
                if searchDate > self {
                    return searchDate
                }
            }
            dateComponents.year = year + 1
            
            if let searchDate = Calendar.current.date(from: dateComponents) {
                return searchDate
            }
        }
        
        return self
    }
}

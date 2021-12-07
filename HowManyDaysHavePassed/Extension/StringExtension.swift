//
//  String.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 06.12.2021.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}

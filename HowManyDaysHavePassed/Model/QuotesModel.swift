//
//  QuotesModel.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 08.12.2021.
//

import Foundation

struct QuotesModel: Identifiable {
    var id = UUID()
    var authorRu: String
    var textRu: String
    var authorEn: String
    var textEn: String
}

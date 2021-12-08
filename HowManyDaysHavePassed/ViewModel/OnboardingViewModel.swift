//
//  OnboardingViewModel.swift
//  HowManyDaysHavePassed
//
//  Created by Андрей Адельбергис on 08.12.2021.
//

import Foundation

final class OnboardingViewModel: ObservableObject {
    @Published var quotes: [QuotesModel] = quotesData
}

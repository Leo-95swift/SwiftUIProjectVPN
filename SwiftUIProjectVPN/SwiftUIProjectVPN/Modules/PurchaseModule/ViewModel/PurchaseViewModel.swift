//
//  PurchaseViewModel.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 05.05.24.
//

import Foundation

/// Вью модель экрана с тарифным планом
final class PurchaseViewModel: ObservableObject {
    
    // MARK: - Constants

    private enum Constants {
        static let vacation = "Vacation"
        static let standart = "Standard"
        static let standardPlus = "Standard+"
        
        static let vacationDays = "7"
        static let standardDays = "30"
        static let standardPlusDays = "90"
        
        static let vacationDuration = "7 days"
        static let standardDuration = "1 month"
        static let standardPlusDuration = "3 months"
        
        static let vacationPrice = 99
        static let standardPrice = 179
        static let standardPlusPrice = 279
    }
    
    public let purchases: [PurchaseInfo] = [
    PurchaseInfo(
        days: Constants.vacationDays,
        type: Constants.vacation,
        duration: Constants.vacationDuration,
        price: Constants.vacationPrice
    ),
    PurchaseInfo(
        days: Constants.standardDays,
        type: Constants.standart,
        duration: Constants.standardDuration,
        price: Constants.standardPrice
    ),
    PurchaseInfo(
        days: Constants.standardPlusDays,
        type: Constants.standardPlus,
        duration: Constants.standardPlusDuration,
        price: Constants.standardPlusPrice
    )]
    
    // MARK: - @State Private Properties
    
    @Published public var selectedIndex = 3 {
        didSet {
            if selectedIndex == oldValue {
                selectedIndex = purchases.count + 1
            }
        }
    }
   
}

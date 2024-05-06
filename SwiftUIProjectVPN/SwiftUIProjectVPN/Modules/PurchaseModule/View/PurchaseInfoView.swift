//
//  PurchiseInfoView.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 05.05.24.
//

import SwiftUI

/// Отдельное вью  тарифного плана
struct PurchaseInfoView: View {
    
    // MARK: - Constants

    enum Constants {
        static let calendar = "calendar"
    }
    
    // MARK: - Public Properties

    var index: Int
    
    // MARK: - Body

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            ZStack {
                Image(Constants.calendar)
                Text(viewModel.purchases[index].days)
                        .font(.system(size: 36))
                        .bold()
                        .padding(.top, 30)
            }
            Text("\(viewModel.purchases[index].type) (\(viewModel.purchases[index].duration)) \(viewModel.purchases[index].price) RUB")
                .foregroundColor(.white)
                .font(.system(size: 16))
            Button {
                print("tapped")
                viewModel.selectedIndex = index
            } label: {
                Text(viewModel.selectedIndex == index ? "Added" : "Buy")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .frame(width: 100, height: 48)
                    .background(viewModel.selectedIndex == index ? Color.purchaseButtonAdded : Color.blue)
                    .cornerRadius(8)
            }
        }
    }
    
    // MARK: - @EnvironmentObjects
    
    @EnvironmentObject private var viewModel: PurchaseViewModel
}

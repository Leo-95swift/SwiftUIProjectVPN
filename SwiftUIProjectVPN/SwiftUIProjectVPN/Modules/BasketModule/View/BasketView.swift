//
//  BasketView.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 06.05.24.
//

import SwiftUI

/// Вью для оплаты тарифного плана
struct BasketView: View {
    
    // MARK: - Constants

    enum Constants {
        static let title = "You choosed"
        static let description = "Please check and pay the selected tariff"
        static let notSelectedTitle = "Нет выбранных тарифоф"
        static let notSelectedDescription = "Выберите тариф чтобы оплатить его"
        static let calendar = "calendar"
        
        // алерты
        
        static let alertTitle = "Получилось !!!"

    }
        
    // MARK: - Body

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                if (0..<viewModel.purchases.count).contains(viewModel.selectedIndex) {
                    TitleView(title: Constants.title, description: Constants.description)
                    Spacer().frame(height: 25)
                    tariffInfoView
                    Spacer().frame(height: 65)
                    buyButtonView
                    Spacer()
                } else {
                    TitleView(title: Constants.notSelectedTitle, description: Constants.notSelectedDescription)
                }
            }
        }
    }
    
    // MARK: - Private Properties

    @State private var isBuyButtonTapped = false
    
    // MARK: - Visual Elements

    private var tariffInfoView: some View {
        HStack {
            ZStack {
                Image(Constants.calendar)
                Text(viewModel.purchases[viewModel.selectedIndex].days)
                        .font(.system(size: 36))
                        .bold()
                        .padding(.top, 30)
            }
            VStack {
                Text("\(viewModel.purchases[viewModel.selectedIndex].type) (\(viewModel.purchases[viewModel.selectedIndex].duration))\n \(viewModel.purchases[viewModel.selectedIndex].price) RUB")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    private var buyButtonView: some View {
        Button(action: {
            isBuyButtonTapped.toggle()
        }) {
            Text("Buy")
                .frame(maxWidth: .infinity, maxHeight: .infinity)

        }
        .frame(width: 342, height: 48, alignment: .center)
        .font(.system(size: 16))
        .foregroundStyle(.white)
        .background(Color.blue)
        .cornerRadius(8)
        .alert(isPresented: $isBuyButtonTapped) {
            Alert(
                title: Text(Constants.alertTitle),
                message: Text("Ваш новый тариф -  \(viewModel.purchases[viewModel.selectedIndex].type) \nЦена - \(viewModel.purchases[viewModel.selectedIndex].price) RUB"), dismissButton: .default(Text("Ок")))
        }
    }
    
    // MARK: - @EnvironmentObjects
    
    @EnvironmentObject private var viewModel: PurchaseViewModel

}

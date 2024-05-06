//
//  PurchaseView.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 05.05.24.
//

import SwiftUI

/// Экран  выбора тарифного плана
struct PurchaseView: View {
        
    // MARK: - Constants

    enum Constants {
        static let title = "Privacy Matters"
        static let description = "Protect your online activities with VPN Plus"
        static let calendar = "calendar"
    }
           
    // MARK: - Body

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TitleView(title: Constants.title, description: Constants.description)
                ScrollView {
                    VStack(spacing: 35) {
                        ForEach(viewModel.purchases.indices, id: \.self) { index in
                            PurchaseInfoView(index: index)
                        }
                    }
                }
            }
        }
    }
    
    // MARK: - @EnvironmentObjects
    
    @EnvironmentObject private var viewModel: PurchaseViewModel
}
    

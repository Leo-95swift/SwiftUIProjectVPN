//
//  MainTab.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 04.05.24.
//

import SwiftUI

/// Главный таб бар приложения
struct MainTabView: View {
    
    // MARK: - Constants

    enum Constants {
        static let vpnTabIcon = "vpn_icon"
        static let purchaseTabIcon = "purchase_icon"
        static let basketTabIcon = "basket_icon"
        static let vpnTabText = "VPN"
        static let purchaseTabText = "Purchase"
        static let basketTabText = "Basket"
    }
    
    // MARK: - @ObservedObjects

    @ObservedObject var viewModel: PurchaseViewModel = PurchaseViewModel()
    
    // MARK: - Body

    var body: some View {
        ZStack {
            Color.tabBackground
                .ignoresSafeArea()
            TabView {
                VPNView()
                    .tabItem {
                        Image(Constants.vpnTabIcon)
                            .renderingMode(.template)
                        Text(Constants.vpnTabText)
                    }
                
                PurchaseView()
                    .tabItem {
                        Image(Constants.purchaseTabIcon)
                            .renderingMode(.template)
                        Text(Constants.purchaseTabText)
                    }
                
                BasketView()
                    .tabItem {
                        Image(Constants.basketTabIcon)
                            .renderingMode(.template)
                        Text(Constants.basketTabText)
                    }
            }
            .onAppear() {
                UITabBar.appearance().backgroundColor = .tabBackground
                UITabBar.appearance().barTintColor = .black
            }
            .tint(.blue)
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    MainTabView()
}

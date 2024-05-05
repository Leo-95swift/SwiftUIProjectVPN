//
//  MainTab.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 04.05.24.
//

import SwiftUI

/// Таб бар приложения
struct MainTabView: View {
    
    // MARK: - Constants
    
    enum Constants {
        // Image names
        static let vpnTabIcon = "vpn_icon"
        static let purchaseTabIcon = "purchase_icon"
        static let basketTabIcon = "basket_icon"
        
        // TabBar names
        static let vpnTabText = "VPN"
        static let purchaseTabText = "Purchase"
        static let basketTabText = "Basket"
    }
    
    // MARK: - Body

    var body: some View {
        TabView {
            VPNView()
                .tabItem {
                    Image(Constants.vpnTabIcon)
                    Text(Constants.vpnTabText)
                }
            
            PurchaseView()
                .tabItem {
                    Image(Constants.purchaseTabIcon)
                    Text(Constants.purchaseTabText)
                }
            
            Text("The third Tab")
                .tabItem {
                    Image(Constants.basketTabIcon)
                    Text(Constants.basketTabText)
                }
        }
    }
}

#Preview {
    MainTabView()
}

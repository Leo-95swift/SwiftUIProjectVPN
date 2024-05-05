//
//  PurchaseView.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 05.05.24.
//

import SwiftUI

/// Предстовление экрана предложений
struct PurchaseView: View {
    
    // MARK: = Constants
    
    enum Constants {
        
        static let title = "Privacy Matters"
        static let description = "Protect your online activities with VPN Plus"
        // Image names
        static let calendar = "calendar"

        
        // Label Titles
        static let weekActivity = "Vacation (7 days) 99 RUB"
        static let monthActivity = "Standart (1 month) 179 RUB"
        static let seasonActivity = "Standart+ (3 month) 279 RUB"

        // Label descriptions

    }
    
    // MARK: - @State Private Properties
    
   // @State private var isToggleOn = false
    
    // MARK: - Body

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea(edges: .top)
            VStack {
                titleView
                purchaseView
            }
        }
    }
    
    // MARK: - UI Elements
    
    var purchaseView: some View {
        VStack {
            ZStack {
                Image(Constants.calendar)
                VStack {
                    Text("90")
                        .font(.system(size: 36))
                        .bold()
                }.padding(.top, 30)
            }
            Text(Constants.weekActivity)
                .foregroundColor(.white)
                .font(.system(size: 16))
            Button {
                print("weak")
            } label: {
                Text("Buy")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .frame(width: 100, height: 48)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
    }
    var titleView: some View {
        VStack {
            Text(Constants.title)
                .foregroundColor(.white)
                .frame(width: 300, height: 30, alignment: .center)
                .font(.system(size: 24))
                .bold()
            
            Text(Constants.description)
                .foregroundColor(.white)
                .frame(width: 340, height: 30, alignment: .center)
                .font(.system(size: 16))
        }
    }
    
}

#Preview {
    PurchaseView()
}

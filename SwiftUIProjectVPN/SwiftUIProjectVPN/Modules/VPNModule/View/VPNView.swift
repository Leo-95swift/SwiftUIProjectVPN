//
//  VPNView.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 04.05.24.
//

import SwiftUI

/// Экран с VPN функционалом
struct VPNView: View {
    
    // MARK: = Constants
    
    enum Constants {
        static let flagImage = "flag"
        static let ipAdress = "Ip Adress"
        static let received = "Received"
        static let sent = "Sent"
        static let ipAdressDescription = "127.0.0.1"
        static let receivedDescription = "0 MB"
        static let sentDescription = "0 MB"
    }
        
    // MARK: - @State Private Properties

    @State private var isToggleOn = false
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 45) {
                Spacer()
                Image(Constants.flagImage)
                Toggle(isOn: $isToggleOn) {
                    Text("")
                }
                    .frame(width: 54)
                
                HStack(spacing: 30) {
                    labelTitlesView
                    labelDescriptionsView
                }
                Spacer()
                Text("Service will expire after 15 days.")
                    .font(.system(size: 18))
                    .frame(width: 300, height: 30)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
    
    // MARK: - Visual Elements
        
    var labelTitlesView: some View {
        VStack(spacing: 14) {
            Text(Constants.ipAdress)
                .frame(width: 100, height: 30, alignment: .leading)
                .foregroundColor(.white)
                .font(.system(size: 18))
            
            Text(Constants.received)
                .frame(width: 100, height: 30, alignment: .leading)
                .foregroundColor(.white)
                .font(.system(size: 18))
            
            Text(Constants.sent)
                .frame(width: 100, height: 30, alignment: .leading)
                .foregroundColor(.white)
                .font(.system(size: 18))
        }
    }
    
    var labelDescriptionsView: some View {
        VStack(spacing: 14) {
            Text(Constants.ipAdressDescription)
                .frame(width: 100, height: 30, alignment: .trailing)
                .foregroundColor(.white)
                .font(.system(size: 18))
            
            Text(Constants.receivedDescription)
                .frame(width: 100, height: 30, alignment: .trailing)
                .foregroundColor(.white)
                .font(.system(size: 18))
            
            Text(Constants.sentDescription)
                .frame(width: 100, height: 30, alignment: .trailing)
                .foregroundColor(.white)
                .font(.system(size: 18))
        }
    }
}

#Preview {
    VPNView()
}

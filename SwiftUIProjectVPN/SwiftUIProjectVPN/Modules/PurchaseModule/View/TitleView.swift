//
//  TitleView.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 06.05.24.
//

import SwiftUI

/// Отдельное вью для заголовка
struct TitleView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(.white)
                .frame(width: 300, height: 30, alignment: .center)
                .font(.system(size: 24))
                .bold()
            
            Text(description)
                .foregroundColor(.white)
                .frame(width: 340, height: 30, alignment: .center)
                .font(.system(size: 16))
        }
    }
}

//
//  PurchaseInfo.swift
//  SwiftUIProjectVPN
//
//  Created by Levon Shaxbazyan on 05.05.24.
//

/// Модель тарифного плана
struct PurchaseInfo: Hashable {
    /// Сколько дней длится подписка
    let days: String
    /// Тип  подписки
    let type: String
    /// Длительность подписки
    let duration: String
    /// Цена подписки
    let price: Int
}

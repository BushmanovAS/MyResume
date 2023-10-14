//
//  View+Extension.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func setupScreen() -> some View {
        self
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.1)
            .foregroundColor(Color.gray100)
            .tint(Color.gray100)
            .background(
                Color.background
                    .ignoresSafeArea()
            )
    }
    
    @ViewBuilder
    func setupPadding() -> some View {
        self
            .padding(.horizontal)
            .padding(.vertical, 10.0)
    }
    
    @ViewBuilder
    func cvNavigationBar<Items: View>(
        _ title: String,
        backgroundColor: Color = .white,
        @ViewBuilder items: @escaping () -> Items
    ) -> some View {
        modifier(CustomNavigationBarModifier(
            title: title,
            backgroundColor: backgroundColor,
            items: items
        ))
    }
    
    @ViewBuilder
    func cvNavigationBar(
        _ title: String,
        backgroundColor: Color = .white
    ) -> some View {
        modifier(CustomNavigationBarModifier(
            title: title,
            backgroundColor: backgroundColor,
            items: {}
        ))
    }
    
    @ViewBuilder
    func cvShadowSmall() -> some View {
        shadow(color: .black.opacity(0.1), radius: 5.0, x: 0.0, y: 2.0)
    }
    
    @ViewBuilder
    func cvShadowLarge() -> some View {
        shadow(color: .black.opacity(0.1), radius: 10.0, x: 0.0, y: 4.0)
    }
}

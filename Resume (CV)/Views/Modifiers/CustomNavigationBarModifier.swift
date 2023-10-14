//
//  CustomNavigationBar.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct CustomNavigationBarModifier<Items: View>: ViewModifier {
    
    var title: String
    var backgroundColor: Color
    
    @ViewBuilder
    var items: () -> Items
    
    func body(content: Content) -> some View {
        content
            .safeAreaInset(edge: .top, spacing: 0.0) {
                HStack(spacing: 16.0) {
                    Text(title)
                        .font(.system(size: 33.0, weight: .bold))
                        .foregroundStyle(Color.navigationTitle)
                    
                    Spacer()
                    
                    items()
                }
                .padding(.horizontal, 25.0)
                .padding(.trailing)
                .padding(.bottom, 10.0)
                .background(
                    Rectangle()
                        .fill(backgroundColor)
                        .ignoresSafeArea()
                        .shadow(
                            color: backgroundColor.opacity(1.0),
                            radius: 2.0,
                            x: 0.0,
                            y: 2.0
                        )
                        .shadow(
                            color: backgroundColor.opacity(1.0),
                            radius: 4.0,
                            x: 0.0,
                            y: 2.0
                        )
                    
                        .shadow(
                            color: backgroundColor.opacity(1.0),
                            radius: 8.0,
                            x: 2.0,
                            y: 0.0
                        )
                )
            }
    }
}

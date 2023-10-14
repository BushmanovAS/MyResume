//
//  AvatarView.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Image("avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 200.0, height: 200.0)
            .clipShape(Circle())
            .background(
                ZStack {
                    Circle()
                        .fill(.white)
                    
                    Circle()
                        .fill(.blue.opacity(0.1))
                }
            )
            .padding(5.0)
            .background(
                Circle()
                    .fill(.white)
            )
        
            .overlay(
                Circle()
                    .fill(.green)
                    .frame(width: 20.0, height: 20.0)
                    .padding(4.0)
                    .background(
                        Circle()
                            .fill(.white)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .padding(20.0)
            )
            .compositingGroup()
            .cvShadowLarge()
    }
}

#Preview {
    AvatarView()
}

//
//  CustomPageControl.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct CustomPageControl: View {
    
    @Binding var selection: Int
    var count: Int
    
    private let itemSize: CGFloat = 20.0
    private let spacing: CGFloat = 10.0
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack(spacing: spacing) {
                ForEach(0 ..< count, id: \.self) { index in
                    Circle()
                        .fill(.gray.opacity(0.3))
                        .frame(width: itemSize, height: itemSize)
                }
            }
            
            Circle()
                .fill(.blue)
                .frame(width: itemSize, height: itemSize)
                .padding(.leading, CGFloat(selection) * (itemSize + spacing))
            
            HStack(spacing: spacing) {
                ForEach(0 ..< count, id: \.self) { index in
                    Circle()
                        .fill(.clear)
                        .frame(width: itemSize, height: itemSize)
                        .overlay(
                            Text("\(index + 1)")
                                .font(.system(size: 13.0, weight: .black, design: .rounded))
                                .foregroundStyle(.white)
                        )
                        .onTapGesture {
                            withAnimation {
                                selection = index
                            }
                        }
                }
            }
            .overlay(
                ZStack {
                    Rectangle()
                        .fill(.white)
                    
                    HStack(spacing: spacing) {
                        ForEach(0 ..< count, id: \.self) { index in
                            Circle()
                                .fill()
                                .frame(width: itemSize, height: itemSize)
                        }
                        .blendMode(.destinationOut)
                    }
                }
                    .compositingGroup()
                    .allowsHitTesting(false)
            )
        }
    }
}

#Preview {
    CustomPageControl(selection: .constant(0), count: 5)
}

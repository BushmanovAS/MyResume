//
//  WrapperLayout.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 10.10.2023.
//

import SwiftUI

struct MultiHStackView: View {
    
    var data: [MultiHStackProtocol]

    var body: some View {
        GeometryReader { geometry in
            self.generateContent(in: geometry)
        }
    }

    private func generateContent(in g: GeometryProxy) -> some View {
        var width = CGFloat.zero
        var height = CGFloat.zero

        return ZStack(alignment: .topLeading) {
            ForEach(data, id: \.id) { item in
                getCell(for: item.title, color: item.color.opacity(0.5))
                    .padding(.horizontal, 5.0)
                    .padding(.vertical, 4.0)
                    .alignmentGuide(.leading, computeValue: { d in
                        if (abs(width - d.width) > g.size.width)
                        {
                            width = 0
                            height -= d.height
                        }
                        let result = width
                        if item.id == self.data.last?.id {
                            width = 0 //last item
                        } else {
                            width -= d.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: {d in
                        let result = height
                        if item.id == data.last?.id {
                            height = 0 // last item
                        }
                        return result
                    })
            }
        }
    }

    private func getCell(for text: String, color: Color) -> some View {
        Text(text)
            .padding(.all, 8.0)
            .padding(.horizontal, 16.0)
            .font(.system(size: 20.0, weight: .semibold))
            .background(color)
            .foregroundColor(Color.white)
            
            .clipShape(Capsule())
    }
}

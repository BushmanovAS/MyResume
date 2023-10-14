//
//  OffsetObserverModifier.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct OffsetObserverModifier: ViewModifier {
    var coordinateSpace: CoordinateSpace
    var handler: (CGFloat) -> Void
    
    @State private var correction: CGFloat?
    
    func body(content: Content) -> some View {
        content
            .background(GeometryReader { geometry in
                Color.clear.preference(
                    key: OffsetPreferenceKey.self,
                    value: geometry.frame(in: coordinateSpace).origin.y
                )
            })
            .onPreferenceChange(OffsetPreferenceKey.self) { offset in
                if correction == nil {
                    correction = offset
                }
                
                let finalOffset = offset - (correction ?? 0.0)
                
                handler(-finalOffset)
            }
    }
    
    struct OffsetPreferenceKey: PreferenceKey {
        static var defaultValue: CGFloat { .zero }
        static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {}
    }
}

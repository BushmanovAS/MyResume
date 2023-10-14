//
//  DataContainer.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct DataContainer<Content: View>: View {
    
    var title: String
    
    @ViewBuilder
    var content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text(title)
                .font(.system(size: 25.0, weight: .bold, design: .default))
            
            content()
        }
        .padding(.horizontal)
        .padding(.vertical, 15.0)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 16.0)
                .fill(.white)
                .cvShadowLarge()
        )
    }
}

#Preview {
    DataContainer(title: "Title") {
        Text("Something interesting")
    }
}

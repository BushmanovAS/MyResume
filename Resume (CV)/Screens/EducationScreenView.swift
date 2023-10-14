//
//  EducationView.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct EducationScreenView: View {
    var body: some View {
        ScrollView {
            VStack {
                DataContainer(title: "Сollege") {
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("БПОУ ВО «Череповецкий металлургический колледж имени академика И.П.Бардина»")
                            .font(.system(size: 23.0, weight: .bold, design: .default))
                        
                        Text("Автоматизация технологических процессов и производств. Старший техник по автоматизации")
                            .font(.system(size: 20.0))
                    }
                    .overlay(
                        Text("2016")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    )
                }
                
                DataContainer(title: "Languages") {
                    VStack(alignment: .leading, spacing: 5.0) {
                        
                        HStack(spacing: 4.0) {
                            Text("Русский 🇷🇺")
                                .fontWeight(.semibold)
                            
                            Text("- Родной")
                        }
                        
                        HStack(spacing: 4.0) {
                            Text("Английский 🇺🇸")
                                .fontWeight(.semibold)
                            
                            Text("- B1")
                        }
                    }
                    .font(.system(size: 24.0))
                }
            }
            .setupPadding()
        }
        .scrollIndicators(.hidden)
        .setupScreen()
        .cvNavigationBar("Education")
    }
}

#Preview {
    EducationScreenView()
}

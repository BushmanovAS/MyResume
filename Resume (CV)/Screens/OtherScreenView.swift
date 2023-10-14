//
//  OtherView.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 11.10.2023.
//

import SwiftUI

struct OtherScreenView: View {
    var body: some View {
        ScrollView {
            VStack {
                DataContainer(
                    title: "Soft Skills") {
                        VStack(alignment: .leading, spacing: 10.0) {
                            ForEach(SoftSkillList.list, id: \.id) { skill in
                                skillRow(skill)
                            }
                        }
                    }
                
                DataContainer(title: "About") {
                    Text("Последние 2 года пишу на SwiftUI. Владею английским на уровне B1, и продолжаю его изучать. Программировал промышленные контроллеры Siemens и Omron. Пробовал написать сервер на Go.")
                        .foregroundStyle(Color.gray90)
                }
            }
            .font(.system(size: 20.0))
            .setupPadding()
        }
        .scrollIndicators(.hidden)
        .setupScreen()
        .cvNavigationBar("Other")
    }
    
    @ViewBuilder
    private func skillRow(_ skill: SoftSkill) -> some View {
        HStack(alignment: .firstTextBaseline,spacing: 16.0) {
            Image(systemName: skill.systemImage)
                .foregroundStyle(skill.imageColor)
            
            Text(skill.description)
                .font(.system(size: 20.0, weight: .medium))
                .foregroundStyle(Color.gray90)
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherScreenView()
    }
}

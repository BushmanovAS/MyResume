//
//  SoftSkillList.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct SoftSkillList {
    static let list: [SoftSkill] = [
        .init(
            systemImage: "person.2.circle",
            imageColor: Color.brown,
            description: "Организовывал встречи международной организации программистов CoffeCode в своем городе. Так же участвовал в подобных встречах в других городах."
        ),
        
            .init(
                systemImage: "atom",
                imageColor: Color.purple,
                description: "В данный момент собираю и упорядочиваю информацию для доклада на конфе, по производительности и перерисовке в SwiftUI."
            ),
        
            .init(
                systemImage: "book",
                imageColor: Color.red,
                description: "Во время работы в Сбере, был наставником нескольких инженеров, для расширения их квалификации."
            )
        
    ]
}

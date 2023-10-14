//
//  SoftSkill.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct SoftSkill: Identifiable {
    let id = UUID().uuidString
    
    let systemImage: String
    let imageColor: Color
    let description: String
}

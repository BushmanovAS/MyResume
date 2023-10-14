//
//  Work.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 10.10.2023.
//

import Foundation

struct Work: Identifiable {
    let id = UUID().uuidString
    
    let icon: String
    let position: String
    let organisation: String
    let period: String
    let achievements: [String]
}

//
//  App.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import Foundation

struct Apps: Identifiable {
    let id = UUID().uuidString
    
    let icon: String
    let name: String
    let description: String
}

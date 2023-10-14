//
//  Contact.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID().uuidString
    
    let icon: String
    let title: String
}

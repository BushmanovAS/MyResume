//
//  Stack.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct Stack: Identifiable, MultiHStackProtocol {
    let id = UUID().uuidString
    
    let title: String
    let color: Color
}

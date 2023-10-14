//
//  ContactList.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import Foundation

struct ContactList {
    static let list: [Contact] = [
        .init(
            icon: "telegram.icon",
            title: "@BushmanovAS"
        ),
        
            .init(
                icon: "phone.icon",
                title: "+7 (911) 543 89 86"
            ),
        
            .init(
                icon: "email.icon",
                title: "BushmanovAS@icloud.com"
            ),
        
            .init(
                icon: "git.icon",
                title: "/BushmanovAS"
            )
    ]
}

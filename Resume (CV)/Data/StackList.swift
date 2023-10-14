//
//  StackList.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct StackList {
    static let list: [Stack] = [
        .init(
            title: "SwiftUI",
            color: Color.red
        ),
        .init(
            title: "UIKit",
            color: Color.blue
        ),
        .init(
            title: "Unit",
            color: Color.green
        ),
        .init(
            title: "REST/JSON",
            color: Color.orange
        ),
        .init(
            title: "MVC/MVVM",
            color: Color.mint
        ),
        .init(
            title: "WidgetKit",
            color: Color.purple
        ),
        .init(
            title: "SPM/Cocoapods",
            color: Color.brown
        ),
        .init(
            title: "AutoLayout/Storyboard/Xib",
            color: Color.cyan
        )
    ]
}

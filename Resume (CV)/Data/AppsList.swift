//
//  AppList.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import Foundation

struct AppsList {
    static let list: [Apps] = [
        .init(
            icon: "rb.app.icon",
            name: "Рейтинг Букмекеров",
            description: "Прогнозы на спорт и трансляции"
        ),
        .init(
            icon: "pixel.pets.icon",
            name: "Pixel Pets - Cute, Widget, App",
            description: "Графика и дизайн"
        ),
        .init(
            icon: "stylekit.icon",
            name: "StyleKit - Aesthetic Wallpapers",
            description: "Графика и дизайн"
        ),
        .init(
            icon: "screenkit.icon",
            name: "ScreenKit, Widget, Theme, Icon",
            description: "Wallpapers, Locket, Widgetable"
        ),
        .init(
            icon: "widget.pal.icon",
            name: "WidgetPal: Live Friends Pics",
            description: "Photo Widgets on Home Screen"
        ),
    ]
}

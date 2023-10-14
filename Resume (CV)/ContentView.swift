//
//  ContentView.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ProfileScreenView()
                .tag(0)
                .tabItem {
                    Label("Me", systemImage: "person.fill")
                }
            
            WorksScreenView()
                .tag(1)
                .tabItem {
                    Label("Experience", systemImage: "sparkles")
                }
            
            LastAppsScreenView()
                .tag(2)
                .tabItem {
                    Label("Apps", systemImage: "apps.iphone")
                }
            
            OtherScreenView()
                .tag(3)
                .tabItem {
                    Label("Other", systemImage: "star")
                }
            
            EducationScreenView()
                .tag(4)
                .tabItem {
                    Label("Education", systemImage: "book.closed")
                }
            
        }
    }
}

#Preview {
    ContentView()
}

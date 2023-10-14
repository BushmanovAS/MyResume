//
//  LastAppsView.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 11.10.2023.
//

import SwiftUI

struct LastAppsScreenView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15.0) {
                ForEach(AppsList.list, id: \.id) { app in
                    appRow(app)
                }
                
                Text("P.S.: Приложения, которых сейчас нет в AppStore, однако я не мало над ними работал: TypeKit, Citybooq, TimeOut")
                    .font(.system(size: 18.0))
                    .foregroundStyle(Color.gray40)
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .setupPadding()
        }
        .scrollIndicators(.hidden)
        .setupScreen()
        .cvNavigationBar("Last Apps")
    }
    
    @ViewBuilder
    private func appRow(_ app: Apps) -> some View {
        ZStack {
            HStack(spacing: 16.0) {
                Image(app.icon)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 13.0))
                    .frame(width: 50.0, height: 50.0)
                    .cvShadowSmall()
                
                VStack(alignment: .leading, spacing: 5.0) {
                    Text(app.name)
                        .font(.system(size: 20.0, weight: .semibold))
                    
                    Text(app.description)
                        .font(.system(size: 17.0, weight: .semibold))
                        .foregroundStyle(Color.gray60)
                    
                }
            }
            .padding()
            .lineLimit(1)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 16.0)
                .fill(.white)
                .cvShadowLarge()
        )
    }
}

struct LastAppsView_Previews: PreviewProvider {
    static var previews: some View {
        LastAppsScreenView()
    }
}

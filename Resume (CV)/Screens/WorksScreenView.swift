//
//  WorksView.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 11.10.2023.
//

import SwiftUI

struct WorksScreenView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(0 ..< WorkList.list.count, id: \.self) { index in
                let work = WorkList.list[index]
                
                ScrollView {
                    workRow(work)
                        .tag(index)
                        .setupPadding()
                }
                .scrollIndicators(.hidden)
            }
        }
        .setupScreen()
        .tabViewStyle(.page(indexDisplayMode: .never))
        .cvNavigationBar("Work Experience") {
            CustomPageControl(
                selection: $selection,
                count: WorkList.list.count
            )
        }
        .animation(.default, value: selection)
    }
    
    @ViewBuilder
    private func workRow(_ work: Work) -> some View {
        ZStack {
            VStack(spacing: 0.0) {
                HStack(spacing: 16.0) {
                    Image(work.icon)
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 13.0))
                        .frame(width: 50.0, height: 50.0)
                        .cvShadowSmall()
                        
                    
                    VStack(alignment: .leading) {
                        Text(work.organisation)
                            .font(.system(size: 25.0, weight: .bold))
                        
                        Text(work.position)
                            .font(.system(size: 20.0, weight: .semibold))
                            .foregroundStyle(Color.gray90)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
                    .padding(.vertical)
                    .padding(.horizontal, -16.0)
                    
                VStack {
                    ForEach(work.achievements, id: \.self) { item in
                        HStack(alignment: .top, spacing: 4.0) {
                            Image(systemName: "circle.fill")
                                .font(.system(size: 7.0))
                                .offset(y: 7.0)
                        
                            Text("\(item)")
                        }
                        
                    }
                    .font(.system(size: 18.0))
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Text(work.period)
                    .fontWeight(.bold)
                    .padding(.top, 5.0)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 16.0)
                .fill(.white)
                .cvShadowLarge()
        )
    }
}

struct WorksView_Previews: PreviewProvider {
    static var previews: some View {
        WorksScreenView()
    }
}


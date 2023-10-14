//
//  ProfileView.swift
//  Resume (CV)
//
//  Created by Антон Бушманов on 10.10.2023.
//

import SwiftUI

struct ProfileScreenView: View {
    
    @State private var bottomOffset: CGFloat = 0.0
    @State private var topOffset: CGFloat = 0.0
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.clear)
                .background(
                    Image("header.background")
                        .resizable()
                        .scaledToFill()
                )
                .frame(height: 300.0 + self.bottomOffset)
                .offset(y: -self.topOffset)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 5.0) {
                    VStack(spacing: -140.0) {
                        Color.clear
                            .frame(height: 230.0)
                        
                        AvatarView()
                    }
                    
                    VStack(alignment: .leading, spacing: 24.0) {
                        VStack(alignment: .leading) {
                            Text("Bushmanov Anton")
                                .font(.system(size: 45.0, weight: .bold, design: .default))
                            
                            Text("@BRLab iOS Developer")
                                .font(.system(size: 25.0, weight: .semibold, design: .default))
                                .foregroundStyle(Color.gray70)
                        }
                        
                        DataContainer(title: "Contacts") {
                            VStack(alignment: .leading, spacing: 10.0) {
                                ForEach(ContactList.list, id: \.id) { contact in
                                    contactRow(contact)
                                }
                            }
                        }
                        
                        DataContainer(title: "Stack") {
                            MultiHStackView(data: StackList.list)
                                .frame(height: 195.0)
                        }
                        
                    }
                    
                }
                .setupPadding()
                .padding(.top, 60.0)
                .modifier(
                    OffsetObserverModifier(
                        coordinateSpace: .named("scroll"),
                        handler: { offset in
                            if offset <= 240 {
                                self.offsetHandler(offset)
                            } else {
                                if self.topOffset != 240.0 {
                                    self.topOffset = 240.0
                                }
                            }
                        })
                )
                
            }
            .scrollIndicators(.hidden)
            .coordinateSpace(name: "scroll")
        }
        .setupScreen()
        .ignoresSafeArea(edges: .top)
    }
    
    @ViewBuilder
    private func contactRow(_ contact: Contact) -> some View {
        HStack(spacing: 16.0) {
            Image(contact.icon)
                .resizable()
                .scaledToFill()
                .frame(width: 27.0, height: 27.0)
            
            Text(contact.title)
                .font(.system(size: 24.0, weight: .medium))
        }
    }
    
    private func offsetHandler(_ offset: CGFloat) {
        let absOffset = abs(offset)
        let intOffset = lround(absOffset)
        let doubleOffset = Double(intOffset)

        if offset < 0.0 {
            self.topOffset = 0.0

            if self.bottomOffset != doubleOffset {
                self.bottomOffset = doubleOffset
            }
        } else if offset < 240.0, offset > 0.0 {
            self.bottomOffset = 0.0

            if self.topOffset != doubleOffset {
                self.topOffset = doubleOffset
            }
        } else if offset == 0 {
            self.bottomOffset = 0
            self.topOffset = 0
        }
    }

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
    }
}

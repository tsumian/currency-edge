//
//  SwiftUIView.swift
//  CurrencyEdge
//
//  Created by Thia Su Mian on 30/7/23.
//

import SwiftUI

enum Tabs: Int {
    case pastRates = 0
    case compareRates = 1
    case profile = 2
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tabs
    var body: some View {
        HStack (alignment: .center){
            Button {
                // Switch to past rates
                selectedTab = .pastRates
            } label: {
                TabBarButton(buttonText: "Compare", imageName: "clock.arrow.circlepath", isActive: selectedTab == .pastRates)
            }
            Button {
                // Switch to compare 
                selectedTab = .compareRates
            } label: {
                TabBarButton(buttonText: "Exchange", imageName: "arrow.left.arrow.right.circle.fill", isActive: selectedTab == .compareRates)
            }
            Button {
                // Switch to profile
                selectedTab = .profile
            } label: {
                TabBarButton(buttonText: "Profile", imageName: "person.circle", isActive: selectedTab == .profile)
            }
        }
        .frame(height: 82)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.compareRates))
    }
}

//
//  RootView.swift
//  CurrencyEdge
//
//  Created by Thia Su Mian on 30/7/23.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .compareRates
    var body: some View {
        VStack {
            CompareExchangeRateView()
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

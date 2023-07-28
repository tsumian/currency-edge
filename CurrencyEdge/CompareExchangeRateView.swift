//
//  ContentView.swift
//  CurrencyEdge
//
//  Created by Thia Su Mian on 3/7/23.
//

import SwiftUI

struct CompareExchangeRateView: View {
    let compareExchangeRatelabel: some View = Label {
        Text("Compare Rates")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.primary)
    } icon: {
        Image(systemName: "dollarsign.arrow.circlepath")
            .padding(.trailing, 3.0)
            .scaleEffect(2)
    }
        .padding(.bottom)

    var body: some View {
        VStack(alignment: .leading) {
            compareExchangeRatelabel
            GroupBox() {
                CurrencyExchangeBox(currency: "SGD", amount: 0.00);
                CurrencyExchangeBox(currency: "EUR", amount: 0.00)
            }
            .padding(.bottom)
            Text("Other Exchange Rates")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            GroupBox() {
                OtherExchangeRateBox(company: "Revolut", amount: 0.00)
                OtherExchangeRateBox(company: "Wise", amount: 0.00)
                OtherExchangeRateBox(company: "Airwallex", amount: 0.00)
            }
            .padding(.bottom)
            
        }
        .padding(.all, 30.0)
    }
}

struct CompareExchangeRateView_Previews: PreviewProvider {
    static var previews: some View {
        CompareExchangeRateView()
    }
}

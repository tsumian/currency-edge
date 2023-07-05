//
//  CurrencyExchangeBox.swift
//  CurrencyEdge
//
//  Created by Thia Su Mian on 5/7/23.
//

import SwiftUI

struct CurrencyExchangeBox: View {
    @State private var currency: String
    @State private var amount: Double
    
    init(currency: String, amount: Double) {
        self.currency = currency
        self.amount = amount
    }
    
    var body: some View {
        let currencylabel: String = "Currency"
        let amountLabel: String = "Amount"

        HStack {
            TextField(
                currencylabel,
                text: $currency
            )
            .disableAutocorrection(true)
            .font(.title)
            .fontWeight(.bold)

            TextField(
                amountLabel,
                value: $amount,
                format: .number.precision(.significantDigits(3)))
            .disableAutocorrection(true)
            .font(.title)
            .fontWeight(.bold)
        }
        .textFieldStyle(.roundedBorder)
    }
}

//
//  OtherExchangeRateBox.swift
//  CurrencyEdge
//
//  Created by Thia Su Mian on 28/7/23.
//

import SwiftUI

struct OtherExchangeRateBox: View {
    @State private var company: String
    @State private var amount: Double
    
    init(company: String, amount: Double) {
        self.company = company
        self.amount = amount
    }
    
    var body: some View {
        let string_amount = String(format: "%.2f", amount)

        HStack {
            Image(systemName: "dollarsign.arrow.circlepath")
            Text(company)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(string_amount)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .frame(maxWidth: .infinity)
    }
}

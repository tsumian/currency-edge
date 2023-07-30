//
//  TabBarButton.swift
//  CurrencyEdge
//
//  Created by Thia Su Mian on 30/7/23.
//

import SwiftUI

struct TabBarButton: View {
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            if isActive {
                Rectangle()
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)
                    
            }
            VStack (alignment: .center, spacing: 4) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Text(buttonText)
                    .multilineTextAlignment(.center)
                    
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(buttonText:"Compare Rates", imageName: "arrow.left.arrow.right.circle.fill", isActive: true)
    }
}

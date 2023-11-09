//
//  Button.swift
//  Weather
//
//  Created by Omar Abdulrahman on 09/11/2023.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 22,
                          weight: .bold,
                          design: .default))
            .cornerRadius(12)
    }
}

#Preview {
    WeatherButton(title: "Button", textColor: .blue, backgroundColor: .white)
}

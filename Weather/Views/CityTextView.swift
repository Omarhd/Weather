//
//  CityTextView.swift
//  Weather
//
//  Created by Omar Abdulrahman on 09/11/2023.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,
                          weight: .medium,
                          design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

#Preview {
    CityTextView(cityName: "UAE, Ajman")
}

//
//  WeatherDayView.swift
//  Weather
//
//  Created by Omar Abdulrahman on 09/11/2023.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayName: String
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack(spacing: 2) {
            Text(dayName)
                .font(.system(size: 16,
                              weight: .bold,
                              design: .default))
                .foregroundColor(.white)
                .padding()
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temprature)°")
                .font(.system(size: 18,
                              weight: .bold,
                              design: .default))
                .foregroundColor(.white)
                .padding()
            
        }
    }
}

#Preview {
    WeatherDayView(dayName: "SAT", imageName: "sun.max.fill", temprature: 22)
}

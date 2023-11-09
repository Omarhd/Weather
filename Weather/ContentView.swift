//
//  ContentView.swift
//  Weather
//
//  Created by Omar Abdulrahman on 09/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(cityName: "UAE, Ajman")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temprature: 24)
                
                HStack(spacing: 12) {
                    WeatherDayView(dayName: "TUE", imageName: "cloud.rain.fill", temprature: 18)
                    WeatherDayView(dayName: "WED", imageName: "cloud.fill", temprature: 20)
                    WeatherDayView(dayName: "THU", imageName: "cloud.heavyrain.fill", temprature: 10)
                    WeatherDayView(dayName: "FRI", imageName: "snow", temprature: 20)
                    WeatherDayView(dayName: "SAT", imageName: "sun.max.fill", temprature: 22)
                }

                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()

            }
        }
    }
}

#Preview {
    ContentView()
}

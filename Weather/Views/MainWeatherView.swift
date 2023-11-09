//
//  MainWeatherView.swift
//  Weather
//
//  Created by Omar Abdulrahman on 09/11/2023.
//

import SwiftUI

struct MainWeatherView: View {
    
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160, height: 160)
            
            Text("\(temprature)°")
                .font(.system(size: 48,
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
                .padding()
            
        }
        
        .padding(.bottom, 30)
    }
}


#Preview {
    MainWeatherView(imageName: "cloud.sun.fill", temprature: 24)
}

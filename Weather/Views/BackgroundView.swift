//
//  BackgroundView.swift
//  Weather
//
//  Created by Omar Abdulrahman on 09/11/2023.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    BackgroundView(isNight: Binding.constant(true))
}

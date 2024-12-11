//
//  CityView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-06.
//


import SwiftUI

struct CityView: View {
    
    //MARK: Stored Property
    let providedCity: City
    
    //MARK: Computed Property
    var body: some View {
        HStack (alignment: .bottom) {
            //Left side
            VStack (alignment: .leading){
                Text("Today, \(providedCity.timeZoneOffset)HRS")
                    .foregroundStyle(Color.gray)
                Text(providedCity.city)
                    .font(.system(.title, design: .default, weight: .thin))
            }
            Spacer()
            
            //Right side
            Text(providedCity.time)
                .font(.system(size: 60.0, weight: .thin, design: .default))
            Text(providedCity.amOrPm)
                .font(.system(.title, design: .default, weight: .thin))
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    WorldClockView()
}


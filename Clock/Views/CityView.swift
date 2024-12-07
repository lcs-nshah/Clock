//
//  CityView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-06.
//


import SwiftUI

struct CityView: View {
    
    //MARK: Stored Properties
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
    
    //MARK: Computed Property
    var body: some View {
        HStack (alignment: .bottom) {
            //Left side
            VStack (alignment: .leading){
                Text("Today, \(timeZoneOffset)HRS")
                    .foregroundStyle(Color.gray)
                Text(city)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            Spacer()
            
            //Right side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle, design: .default, weight: .thin))
        }
    }
}

#Preview {
    CityView(timeZoneOffset: "-9", city: "Mexico City", time: "3:30", amOrPm: "AM")
}


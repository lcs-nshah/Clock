//
//  AlarmView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-07.
//


import SwiftUI

struct AlarmView: View {
    
    //MARK: Stored Properties
    let time: String
    let amOrPM: String
    
    //MARK: Computed Property
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                HStack (alignment: .bottom) {
                    //Left side
                    Text(time)
                        .font(.system(size: 64.0, weight: .thin, design: .default))
                    Text(amOrPM)
                        .font(.system(.largeTitle, design: .default, weight: .thin))
                }
                Text("Alarm")
            }
            
            Spacer()
            
            //Right side
            Toggle("", isOn: Binding.constant(true))
                .frame(width: 75)
                .tint(.green)
            
        }
        .padding(.horizontal)
    }
}
#Preview {
    AlarmsView()
}

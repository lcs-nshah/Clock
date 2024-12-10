//
//  StopwacthView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-06.
//

import SwiftUI

struct StopwatchView: View {
    var body: some View {
        VStack {
            //Main stopwatch time
            Text("00:16.68")
                .font(.system(size: 90.0, weight: .thin, design: .default))
                .padding(.vertical, 120)
            
            //Start and reset buttons
            HStack {
                //Reset
                Button {} label: {
                    Text("Reset")
                        .padding(EdgeInsets(top: 35, leading: 35, bottom: 35, trailing: 35))
                        .foregroundStyle(.white)
                        .background(Color(hue: 1, saturation: 0, brightness: 0.2), in: Circle())
                }
                
                //Carousel
                Spacer()
                
                Circle()
                    .fill(Color.white)
                    .frame(height: 8)
                
                Circle()
                    .fill(Color.gray)
                    .frame(height: 8)
                
                Spacer()
                
                //Start
                Button {} label: {
                    Text("Start")
                        .padding(EdgeInsets(top: 35, leading: 35, bottom: 35, trailing: 35))
                        .foregroundStyle(.green)
                        .background(Color(hue: 0.3, saturation: 1.0, brightness: 0.17), in: Circle())
                }
            }
            
            //Lap times
            List {
                LapView(lapNumber: 5, lapTime: "00:02.27")
                LapView(lapNumber: 4, lapTime: "00:02.61")
                LapView(lapNumber: 3, lapTime: "00:02.59")
                    .foregroundStyle(.green)
                LapView(lapNumber: 2, lapTime: "00:03.68")
                LapView(lapNumber: 1, lapTime: "00:05.52")
                    .foregroundStyle(.red)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    LandingView()
}



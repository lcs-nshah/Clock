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
            
            Spacer()
            //Start and reset buttons
            HStack (alignment: .center) {
                //Left side
                Button {} label: {
                    Text("Reset")
                        .padding(EdgeInsets(top: 35, leading: 35, bottom: 35, trailing: 35))
                        .foregroundStyle(.white)
                        .background(Color(hue: 1, saturation: 0, brightness: 0.2), in: Circle())
                }
                
                //Middle
                Spacer()
                
                Circle()
                    .fill(Color.white)
                    .frame(height: 8)
                
                Circle()
                    .fill(Color.gray)
                    .frame(height: 8)
                
                Spacer()
                
                //Right side
                Button {} label: {
                    Text("Start")
                        .padding(EdgeInsets(top: 35, leading: 35, bottom: 35, trailing: 35))
                        .foregroundStyle(.green)
                        .background(Color(hue: 0.3, saturation: 1.0, brightness: 0.17), in: Circle())
                }
            }
        }
    }
}

#Preview {
    LandingView()
}

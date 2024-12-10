//
//  AlarmsView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-06.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading) {
                //Sleep schedule
                Group {
                    Text(Image(systemName: "bed.double.fill"))
                    + Text(" Sleep | Wake Up").font(.system(.title3, design: .default, weight: .bold))
                }
                .padding(.horizontal)
                List {
                    HStack {
                        //Left side
                        Text("No Alarm")
                            .foregroundStyle(Color.gray)
                        
                        Spacer()
                        
                        //Right side
                        Button {} label: {
                            Text("SET UP")
                                .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                                .foregroundStyle(.orange)
                                .background(Color(hue: 1, saturation: 0, brightness: 0.2), in: Capsule())
                        }
                    }
                    
                    //Alarms
                    Text("Other")
                        .font(.system(.title2, design: .default, weight: .bold))
                    
                    AlarmView(time: "7:30", amOrPM: "AM")
                    AlarmView(time: "8:15", amOrPM: "AM")
                    AlarmView(time: "9:00", amOrPM: "AM")
                    AlarmView(time: "9:15", amOrPM: "AM")
                }
                .listStyle(.plain)
            }
            .navigationTitle("Alarms")
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    Button("Edit") {
                        //Does nothing right now
                    }
                }
                ToolbarItem(placement: .primaryAction) {
                    
                    Button {
                        //Does nothing right now
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    LandingView()
}



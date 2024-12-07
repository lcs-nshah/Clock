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
                Text("Other")
                    .font(.system(.title2, design: .default, weight: .bold))
                    .padding(.horizontal)
                
                AlarmView(time: "7:30", amOrPM: "AM")
                AlarmView(time: "8:15", amOrPM: "AM")
                AlarmView(time: "9:00", amOrPM: "AM")
                AlarmView(time: "9:15", amOrPM: "AM")

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



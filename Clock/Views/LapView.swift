//
//  LapView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-09.
//


import SwiftUI

struct LapView: View {
    
    //MARK: Stored Properties
    let lapNumber: Int
    let lapTime: String
    
    //MARK: Computed Property
    var body: some View {
        HStack {
            //Lap number
            Text("Lap \(lapNumber)")
            
            Spacer()
            
            //Lap time
            Text(lapTime)
        }
    }
}

#Preview {
    StopwatchView()
}

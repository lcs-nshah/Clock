//
//  WorldClockView.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-06.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            List {
                //Ottawa
                CityView(providedCity: ottawa)
                //Vancouver
                CityView(providedCity: vancouver)
                //Hamburg
                CityView(providedCity: hamburg)
                //Sydney
                CityView(providedCity: sydney)
                //Dubai
                CityView(providedCity: dubai)
                //Mexico City
                CityView(providedCity: mexicoCity)
            }
            .listStyle(.plain)
            .navigationTitle("World Clock")
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
            .padding(10)
        }
    }
}

#Preview {
    LandingView()
}



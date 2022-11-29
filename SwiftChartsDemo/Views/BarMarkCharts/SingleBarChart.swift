//
//  SingleBarChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct SingleBarChart: View {
    @State var allWeather = Weather.mixedTwoWeeksWeatherSyracuseOrlando
    
    var body: some View {
        Chart(allWeather) {
            BarMark(x: .value("Date", $0.date), y: .value("Average Temperature", $0.averageTemperature))
        }
        .padding()
        .frame(height: 300)
        .navigationTitle("Single Bar Chart")
    }
}

struct SingleBarChart_Previews: PreviewProvider {
    static var previews: some View {
        SingleBarChart()
    }
}

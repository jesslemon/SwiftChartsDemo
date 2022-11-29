//
//  SingleBarThresholdChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct SingleBarThresholdChart: View {
    @State var allWeather = Weather.mixedTwoWeeksWeatherSyracuseOrlando
    
    var body: some View {
        Chart(allWeather) {
            BarMark(x: .value("Date", $0.date), y: .value("Average Temperature", $0.averageTemperature))
                .foregroundStyle(by: .value("City", $0.city))
            
            RuleMark(y: .value("Above Freezing Temps", 33.0))
                .foregroundStyle(Color.red)

        }
        .padding()
        .frame(height: 300)
        .navigationTitle("Single Bar Threshold Chart")
    }
}

struct SingleBarThresholdChart_Previews: PreviewProvider {
    static var previews: some View {
        SingleBarThresholdChart()
    }
}

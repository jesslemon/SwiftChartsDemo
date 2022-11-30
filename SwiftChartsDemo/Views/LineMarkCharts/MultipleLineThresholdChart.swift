//
//  MultipleLineThreshold.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import Charts
import SwiftUI

struct MultipleLineThresholdChart: View {
    @State var allWeather = Weather.mixedTwoWeeksWeatherSyracuseOrlando
    
    var body: some View {
        Chart(allWeather) {
            LineMark(x: .value("Date", $0.date), y: .value("Average Temperature", $0.averageTemperature))
                .foregroundStyle(by: .value("City", $0.city))
            
            RuleMark(y: .value("Above Freezing Temps", 33.0))
                .foregroundStyle(Color.red)

        }
        .padding()
        .frame(height: 300)
        .navigationTitle(ChartTypeExample.multipleLineThreshold.displayTitle)
    }
}

struct MultipleLineThresholdChart_Previews: PreviewProvider {
    static var previews: some View {
        MultipleLineThresholdChart()
    }
}

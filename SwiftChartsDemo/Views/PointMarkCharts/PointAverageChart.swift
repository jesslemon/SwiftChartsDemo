//
//  PointAverageChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import Charts
import SwiftUI

struct PointAverageChart: View {
    @State var thisWeeksWeather = Weather.thisWeeksWeatherSyracuse
    
    var body: some View {
        Chart(thisWeeksWeather) {
            PointMark(x: .value("Date", $0.date), y: .value("Minimum Temperature", $0.minimumTemperature))
            PointMark(x: .value("Date", $0.date), y: .value("Maximum Temperature", $0.maximumTemperature))
            LineMark(x: .value("Date", $0.date), y: .value("Average Temperature", $0.averageTemperature))
                .foregroundStyle(Color.red)
        }
        .padding()
        .frame(height: 300)
        .navigationTitle(ChartTypeExample.pointAverage.displayTitle)
    }
}

struct PointAverageChart_Previews: PreviewProvider {
    static var previews: some View {
        PointAverageChart()
    }
}

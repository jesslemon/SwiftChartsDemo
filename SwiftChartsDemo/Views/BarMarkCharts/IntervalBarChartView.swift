//
//  IntervalBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct IntervalBarChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuse

    var body: some View {
        Chart(allWeather) {
            BarMark(xStart: .value("Minimum Temperature", $0.minimumTemperature), xEnd: .value("Maximum Temperature", $0.maximumTemperature), y: .value("Date", $0.date))
        }
    }
}

struct IntervalBarChartView_Previews: PreviewProvider {
    static var previews: some View {
        IntervalBarChartView()
    }
}

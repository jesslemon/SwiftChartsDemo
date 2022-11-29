//
//  MultipleIntervalBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StackedIntervalBarChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuseOrlando

    var body: some View {
        Chart(allWeather) {
            BarMark(xStart: .value("Minimum Temperature", $0.minimumTemperature), xEnd: .value("Maximum Temperature", $0.maximumTemperature), y: .value("Date", $0.date))
                .foregroundStyle(by: .value("City", $0.city))
        }
    }
}

struct StackedIntervalBarChartView_Previews: PreviewProvider {
    static var previews: some View {
        StackedIntervalBarChartView()
    }
}

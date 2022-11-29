//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PointLineChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuse

    var body: some View {
        Chart(allWeather) {
            LineMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
            PointMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
        }
    }
}

struct PointLineChartView_Previews: PreviewProvider {
    static var previews: some View {
        PointLineChartView()
    }
}

//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PlainLineChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuse

    var body: some View {
        Chart(allWeather) {
            LineMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
        }
    }
}

struct PlainLineChartView_Previews: PreviewProvider {
    static var previews: some View {
        PlainLineChartView()
    }
}

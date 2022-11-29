//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PlainPointChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuse

    var body: some View {
        Chart(allWeather) {
            PointMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
        }
    }
}

struct PlainPointChartView_Previews: PreviewProvider {
    static var previews: some View {
        PlainPointChartView()
    }
}

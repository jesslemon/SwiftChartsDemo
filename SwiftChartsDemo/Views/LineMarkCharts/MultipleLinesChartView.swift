//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct MultipleLinesChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuseOrlando

    var body: some View {
        Chart(allWeather) {
            LineMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                .foregroundStyle(by: .value("City", $0.city))
        }
    }
}

struct MultipleLinesChartView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleLinesChartView()
    }
}

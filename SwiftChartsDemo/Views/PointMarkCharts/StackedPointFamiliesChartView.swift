//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StackedPointFamiliesChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuseOrlando

    var body: some View {
        Chart(allWeather) {
            PointMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                .foregroundStyle(by: .value("City", $0.city)) // Different colors
                .symbol(by: .value("City", $0.city)) // Different shapes
        }
    }
}

struct StackedPointFamiliesChartView_Previews: PreviewProvider {
    static var previews: some View {
        StackedPointFamiliesChartView()
    }
}

//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct RangeAreaChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuse

    var body: some View {
        Chart(allWeather) {
            AreaMark(x: .value("Date", $0.date), yStart: .value("Minimum Temperature", $0.minimumTemperature), yEnd: .value("Maximum Temperature", $0.maximumTemperature))
        }
    }
}

struct RangeAreaChartView_Previews: PreviewProvider {
    static var previews: some View {
        RangeAreaChartView()
    }
}

//
//  RuleMarksChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PlainRuleMarksChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuse

    var body: some View {
        Chart(allWeather) {
            RuleMark(xStart: .value("Min Temperature", $0.minimumTemperature), xEnd: .value("Max Temperature", $0.maximumTemperature), y: .value("Date", $0.date))
        }
    }
}

struct RuleMarksChartView_Previews: PreviewProvider {
    static var previews: some View {
        PlainRuleMarksChartView()
    }
}

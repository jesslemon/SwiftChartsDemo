//
//  MultipleRuleMarksChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StackedRuleMarksChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuseOrlando

    var body: some View {
        Chart(allWeather) {
            RuleMark(xStart: .value("Min Temperature", $0.minimumTemperature), xEnd: .value("Max Temperature", $0.maximumTemperature), y: .value("Date", $0.date))
                .foregroundStyle(by: .value("City", $0.city))
        }
    }
}

struct StackedRuleMarksChartView_Previews: PreviewProvider {
    static var previews: some View {
        StackedRuleMarksChartView()
    }
}

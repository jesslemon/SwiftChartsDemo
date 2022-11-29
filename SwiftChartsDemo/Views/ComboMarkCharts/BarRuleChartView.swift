//
//  BarRuleChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct BarRuleChartView: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuseOrlando

    var body: some View {
        Chart(allWeather) {
            BarMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                .foregroundStyle(by: .value("City", $0.city))
            
            RuleMark(y: .value("Shorts Weather Temperature", 60.0))
                .foregroundStyle(Color.red)
        }
    }
}

struct BarRuleChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarRuleChartView()
    }
}

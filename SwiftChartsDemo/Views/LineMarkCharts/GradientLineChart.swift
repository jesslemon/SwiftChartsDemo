//
//  GradientLineChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import Charts
import SwiftUI

struct GradientLineChart: View {
    @State var screenTime = ScreenTime.totalScreenTimePerDay
    @State var allWeather = Weather.thisWeeksWeatherSyracuse

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(screenTime) {
                    AreaMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                        .foregroundStyle(Gradient(colors: [.red, .orange, .yellow, .green]))
                    LineMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                        .foregroundStyle(Gradient(colors: [.red, .orange, .yellow, .green]))
                }
                .padding()
                .frame(height: 300)

                Chart(allWeather) {
                    AreaMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                        .foregroundStyle(Gradient(colors: [.cyan, .white]))
                    LineMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                        .foregroundStyle(Color.blue)
                }
                .padding()
                .frame(height: 300)
            }
        }
        .navigationTitle(ChartTypeExample.gradientLine.displayTitle)
    }
}

struct GradientLineChart_Previews: PreviewProvider {
    static var previews: some View {
        GradientLineChart()
    }
}

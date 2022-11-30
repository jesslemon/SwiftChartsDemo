//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct SimpleLineChart: View {
    @State var cheeseburgerPrices = Food.cheeseburgerPrices
    @State var allWeather = Weather.thisWeeksWeatherSyracuse
    @State var populationCounts = Population.totalPopulationCounts
    @State var screenTime = ScreenTime.totalScreenTimePerDay

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(cheeseburgerPrices) {
                    LineMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                        .foregroundStyle(Color.red)
                }
                .padding()
                .frame(height: 300)

                Chart(allWeather) {
                    LineMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                        .foregroundStyle(Color.green.opacity(0.25))
                }
                .padding()
                .frame(height: 300)

                Chart(populationCounts) {
                    LineMark(x: .value("Age Group", $0.ageGroup), y: .value("Count", $0.count))
                }
                .padding()
                .frame(height: 300)

                Chart(screenTime) {
                    LineMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                }
                .padding()
                .frame(height: 300)
            }
        }
        .navigationTitle(ChartTypeExample.simpleLine.displayTitle)
    }
}

struct PlainLineChartView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleLineChart()
    }
}

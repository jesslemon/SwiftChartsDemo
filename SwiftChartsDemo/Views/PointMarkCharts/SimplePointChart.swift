//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct SimplePointChart: View {
    @State var cheeseburgerPrices = Food.cheeseburgerPrices
    @State var allWeather = Weather.thisWeeksWeatherSyracuse
    @State var populationCounts = Population.totalPopulationCounts
    @State var screenTime = ScreenTime.totalScreenTimePerDay

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(cheeseburgerPrices) {
                    PointMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                        .foregroundStyle(Color.red)
                }
                .padding()
                .frame(height: 300)

                Chart(allWeather) {
                    PointMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                        .foregroundStyle(Color.purple)
                }
                .padding()
                .frame(height: 300)
                
                Chart(populationCounts) {
                    PointMark(x: .value("Age Group", $0.ageGroup), y: .value("Count", $0.count))
                        .foregroundStyle(Color.blue)
                }
                .padding()
                .frame(height: 300)

                Chart(screenTime) {
                    PointMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                        .foregroundStyle(Color.orange)
                }
                .padding()
                .frame(height: 300)

            }
        }
        .navigationTitle(ChartTypeExample.simplePoint.displayTitle)
    }
}

struct SimplePointChart_Previews: PreviewProvider {
    static var previews: some View {
        SimplePointChart()
    }
}

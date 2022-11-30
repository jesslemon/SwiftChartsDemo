//
//  PointLineChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import Charts
import SwiftUI

struct PointLineChart: View {
    @State var toyCounts = Toy.totalToyCounts
    @State var cheeseburgerPrices = Food.cheeseburgerPrices
    @State var allWeather = Weather.thisWeeksWeatherSyracuse
    @State var populationCounts = Population.totalPopulationCounts
    @State var screenTime = ScreenTime.totalScreenTimePerDay
    @State var allStorage = Storage.allStorage

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(toyCounts) {
                    LineMark(x: .value("Shape", $0.shape), y: .value("Count", $0.count))
                    PointMark(x: .value("Shape", $0.shape), y: .value("Count", $0.count))
                }
                .padding()
                .frame(height: 300)
                
                Chart(cheeseburgerPrices) {
                    LineMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                        .foregroundStyle(Color.red)
                    PointMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                        .foregroundStyle(Color.red)
                }
                .padding()
                .frame(height: 300)
                
                Chart(allWeather) {
                    LineMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                        .foregroundStyle(Color.green.opacity(0.25))
                    PointMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                        .foregroundStyle(Color.green.opacity(0.25))
                }
                .padding()
                .frame(height: 300)
                
                Chart(populationCounts) {
                    LineMark(x: .value("Age Group", $0.ageGroup), y: .value("Count", $0.count))
                        .foregroundStyle(Color.blue)
                    PointMark(x: .value("Age Group", $0.ageGroup), y: .value("Count", $0.count))
                        .foregroundStyle(Color.yellow)
                }
                .padding()
                .frame(height: 300)
                
                Chart(screenTime) {
                    LineMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                    PointMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                }
                .padding()
                .frame(height: 300)
                
                Chart(allStorage) {
                    LineMark(x: .value("Category", $0.category), y: .value("Amount", $0.amount))
                    PointMark(x: .value("Category", $0.category), y: .value("Amount", $0.amount))
                }
                .padding()
                .frame(height: 300)
            }
        }
        .navigationTitle(ChartTypeExample.pointLine.displayTitle)
    }
}

struct PointLineChart_Previews: PreviewProvider {
    static var previews: some View {
        PointLineChart()
    }
}

//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StackedPointChart: View {
    @State var allWeather = Weather.thisWeeksWeatherSyracuseOrlando
    @State var allPopulation = Population.allPopulation.reversed()
    @State var cheeseburgerPrices = Food.cheeseburgerPricesByItem
    @State var allScreenTime = ScreenTime.allScreenTime

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(allWeather) {
                    PointMark(x: .value("Date", $0.date), y: .value("Temperature", $0.averageTemperature))
                        .foregroundStyle(by: .value("City", $0.city)) // Different colors
                        .symbol(by: .value("City", $0.city)) // Different shapes
                }
                .padding()
                .frame(height: 300)
                
                Chart(allPopulation) {
                    PointMark(x: .value("Age Group", $0.ageGroup), y: .value("Count", $0.count))
                        .foregroundStyle(by: .value("Gender", $0.gender))
                        .symbol(by: .value("Gender", $0.gender))
                }
                .padding()
                .frame(height: 300)

                Chart(cheeseburgerPrices) {
                    PointMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                        .foregroundStyle(by: .value("Name", $0.name))
                        .symbol(by: .value("Name", $0.name))
                }
                .padding()
                .frame(height: 300)


                Chart(allScreenTime) {
                    PointMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                        .foregroundStyle(by: .value("Category", $0.category))
                        .symbol(by: .value("Category", $0.category))
                }
                .chartForegroundStyleScale(["Social Media": .blue, "Productivity": .cyan, "Internet": .orange, "Other": .gray.opacity(0.25)])
                .padding()
                .frame(height: 300)

            }
        }
        .navigationTitle(ChartTypeExample.stackedPoint.displayTitle)
    }
}

struct StackedPointChart_Previews: PreviewProvider {
    static var previews: some View {
        StackedPointChart()
    }
}

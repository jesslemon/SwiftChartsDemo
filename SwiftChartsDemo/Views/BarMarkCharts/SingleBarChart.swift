//
//  SingleBarChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct SingleBarChart: View {
    @State var allWeather = Weather.mixedTwoWeeksWeatherSyracuseOrlando
    @State var allToys = Toy.allToys
    @State var allPopulation = Population.allPopulation
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(allWeather) {
                    BarMark(x: .value("Date", $0.date), y: .value("Average Temperature", $0.averageTemperature))
                }
                .padding()
                .frame(height: 300)
                
                Chart(allToys) {
                    BarMark(x: .value("Shape", $0.shape), y: .value("Count", $0.count))
                        .foregroundStyle(Color.red)
                        .cornerRadius(20.0)
                        .opacity(0.5)
                }
                .padding()
                .frame(height: 300)

                Chart(allPopulation) {
                    BarMark(x: .value("Age Range", $0.ageGroup), y: .value("Count", $0.count))
                        .foregroundStyle(Color.yellow)
                }
                .padding()
                .frame(height: 300)
            }
        }
        .navigationTitle(ChartTypeExample.singleBar.displayTitle)
    }
}

struct SingleBarChart_Previews: PreviewProvider {
    static var previews: some View {
        SingleBarChart()
    }
}

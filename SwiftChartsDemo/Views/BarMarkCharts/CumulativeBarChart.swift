//
//  CumulativeBarChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct CumulativeBarChart: View {
    @State var allPopulation = Population.allPopulation
    @State var allToys = Toy.allToys
    @State var cheeseburgerCostsByItem = Food.cheeseburgerPricesByItem

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(allPopulation) {
                    BarMark(x: .value("Age Group", $0.ageGroup), y: .value("Population Count", $0.count))
                        .foregroundStyle(by: .value("Gender", $0.gender))
                }
                .padding()
                .frame(height: 300)
                
                Chart(allToys) {
                    BarMark(x: .value("Toy Shape", $0.shape), y: .value("Total Count", $0.count))
                        .foregroundStyle(by: .value("Toy Color", $0.color))
                }
                .padding()
                .chartForegroundStyleScale(["Green": .green, "Yellow": .yellow, "Red": .red, "Blue": .blue])
                .frame(height: 300)

                Chart(cheeseburgerCostsByItem) {
                    BarMark(x: .value("Year", $0.date), y: .value("Cost", $0.price))
                        .foregroundStyle(by: .value("Food Item", $0.name))
                }
                .padding()
                .frame(height: 300)
            }
        }
        .navigationTitle(ChartTypeExample.cumulativeBar.displayTitle)
    }
}

struct CumulativeBarChart_Previews: PreviewProvider {
    static var previews: some View {
        CumulativeBarChart()
    }
}

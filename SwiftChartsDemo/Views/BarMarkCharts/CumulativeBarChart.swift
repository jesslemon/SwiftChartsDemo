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

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(allPopulation) {
                    BarMark(x: .value("Age Group", $0.ageGroup), y: .value("Population Count", $0.count))
                        .foregroundStyle(by: .value("Gender", $0.gender))
                }
                .frame(height: 300)
                
                Chart(allToys) {
                    BarMark(x: .value("Toy Shape", $0.shape), y: .value("Total Count", $0.count))
                        .foregroundStyle(by: .value("Toy Color", $0.color))
                }
                .chartForegroundStyleScale(["Green": .green, "Yellow": .yellow, "Red": .red, "Blue": .blue])
                .frame(height: 300)
            }
            .padding()
        }
        .navigationTitle("Cumulative Bar Chart")
    }
}

struct CumulativeBarChart_Previews: PreviewProvider {
    static var previews: some View {
        CumulativeBarChart()
    }
}

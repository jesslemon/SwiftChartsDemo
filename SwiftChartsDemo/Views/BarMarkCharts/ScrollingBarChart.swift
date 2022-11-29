//
//  ScrollingBarChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct ScrollingBarChart: View {
    @State var allPopulation = Population.allPopulation
    @State var allToys = Toy.allToys

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ScrollView(.horizontal) {
                    Chart(allPopulation) {
                        BarMark(x: .value("Age Group", $0.ageGroup), y: .value("Population Count", $0.count), stacking: .center)
                            .foregroundStyle(by: .value("Gender", $0.gender))
                    }
                    .frame(width: 900, height: 300)
                }

                ScrollView(.horizontal) {
                    Chart(allToys) {
                        BarMark(x: .value("Toy Shape", $0.shape), y: .value("Total Count", $0.count), stacking: .center)
                            .foregroundStyle(by: .value("Toy Color", $0.color))
                    }
                    .chartForegroundStyleScale(["Green": .green, "Yellow": .yellow, "Red": .red, "Blue": .blue])
                    .frame(width: 900, height: 300)
                }
            }
            .padding()
        }
        .navigationTitle("Scrolling Bar Chart")
    }
}

struct ScrollingBarChart_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingBarChart()
    }
}

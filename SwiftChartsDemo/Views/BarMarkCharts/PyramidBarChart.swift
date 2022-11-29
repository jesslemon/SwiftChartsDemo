//
//  PyramidChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PyramidBarChart: View {
    @State var allPopulation = Population.allPopulation
    
    var body: some View {
        Chart(allPopulation) {
            BarMark(x: .value("Population Count", $0.count), y: .value("Age Group", $0.ageGroup), stacking: .center)
                .foregroundStyle(by: .value("Gender", $0.gender))
        }
        .chartXAxis(.hidden)
        .padding()
        .frame(height: 300)
        .navigationTitle("Pyramid Bar Chart")
    }
}

struct PyramidChart_Previews: PreviewProvider {
    static var previews: some View {
        PyramidBarChart()
    }
}

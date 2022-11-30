//
//  HeatMapChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct HeatMapChart: View {
    @State var allEntries = MatrixEntry.allEntries

    var body: some View {
        Chart(allEntries) {
            RectangleMark(x: .value("Positive", $0.positive), y: .value("Negative", $0.negative))
                .foregroundStyle(by: .value("Number", $0.number))
        }
        .padding()
        .frame(height: 300)
        .navigationTitle(ChartTypeExample.heatMap.displayTitle)
    }
}

struct HeatMapChart_Previews: PreviewProvider {
    static var previews: some View {
        HeatMapChart()
    }
}

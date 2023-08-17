//
//  DonutChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct DonutChart: View {
    @State var allStorage = Storage.allStorage

    var body: some View {
        Chart(allStorage) {
            SectorMark(
                angle: .value("Total Amount", $0.amount),
                innerRadius: .ratio(0.618),
                outerRadius: .inset(10),
                angularInset: 1
            )
            .cornerRadius(4)
            .foregroundStyle(by: .value("Category", $0.category))
        }
        .padding()
        .navigationTitle(ChartTypeExample.donut.displayTitle)
    }
}

struct DonutChart_Previews: PreviewProvider {
    static var previews: some View {
        DonutChart()
    }
}

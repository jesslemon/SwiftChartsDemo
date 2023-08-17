//
//  PieChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PieChart: View {
    @State var allStorage = Storage.allStorage

    var body: some View {
        Chart(allStorage) {
            SectorMark(angle: .value("Total Amount", $0.amount))
                .foregroundStyle(by: .value("Category", $0.category))
        }
        .padding()
        .navigationTitle(ChartTypeExample.pie.displayTitle)
    }
}

struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        PieChart()
    }
}

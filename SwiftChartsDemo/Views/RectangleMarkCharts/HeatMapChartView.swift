//
//  HeatMapChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct HeatMapChartView: View {
    @State var allEntries = MatrixEntry.allEntries

    var body: some View {
        Chart(allEntries) {
            RectangleMark(x: .value("Positive", $0.positive), y: .value("Negative", $0.negative))
                .foregroundStyle(by: .value("Number", $0.number))
        }
    }
}

struct HeatMapChartView_Previews: PreviewProvider {
    static var previews: some View {
        HeatMapChartView()
    }
}

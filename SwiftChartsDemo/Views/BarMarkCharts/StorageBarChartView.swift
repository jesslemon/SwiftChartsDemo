//
//  1DBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StorageBarChartView: View {
    @State var allStorage = Storage.allStorage

    var body: some View {
        Chart(allStorage) {
            BarMark(x: .value("Total Amount", $0.amount))
                .foregroundStyle(by: .value("Category", $0.category))
        }
        .chartBackground { _ in Color.gray.opacity(0.25) }
        .padding()
        .frame(height: 100)
        .navigationTitle(ChartTypeExample.storageBar.displayTitle)
    }
}

struct StorageBarChartView_Previews: PreviewProvider {
    static var previews: some View {
        StorageBarChartView()
    }
}

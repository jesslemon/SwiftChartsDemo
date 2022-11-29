//
//  AllChartTypesListView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct AllChartTypesListView: View {
    var body: some View {
        List(ChartType.allCases) { chartType in
            NavigationLink(destination: { ChartTypeExamplesListView(type: chartType) },
                           label: { Text(chartType.displayTitle) })
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("All Chart Types")
    }
}

struct AllChartTypesListView_Previews: PreviewProvider {
    static var previews: some View {
        AllChartTypesListView()
    }
}

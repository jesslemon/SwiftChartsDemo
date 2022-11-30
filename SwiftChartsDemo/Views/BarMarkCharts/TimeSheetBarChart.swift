//
//  TimeSheetBarChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import Charts
import SwiftUI

struct TimeSheetBarChart: View {
    @State var allTimeEntries = TimeEntry.allTimeEntries
    
    var body: some View {
        Chart(allTimeEntries) {
            BarMark(xStart: .value("Start Time", $0.startTime), xEnd: .value("End Time", $0.endTime), y: .value("Category", $0.category))
                .foregroundStyle(by: .value("Category", $0.category))
        }
        .padding()
        .frame(height: 300)
        .navigationTitle(ChartTypeExample.timeSheetBar.displayTitle)
    }
}

struct TimeSheetBarChart_Previews: PreviewProvider {
    static var previews: some View {
        TimeSheetBarChart()
    }
}

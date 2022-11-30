//
//  ScreenTimeBarChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import Charts
import SwiftUI

struct ScreenTimeBarChart: View {
    @State var allScreenTime = ScreenTime.allScreenTime
    
    var body: some View {
        Chart(allScreenTime) {
            BarMark(x: .value("Weekday", $0.weekday), y: .value("Hours", $0.hours))
                .foregroundStyle(by: .value("Category", $0.category))
            
            RuleMark(y: .value("Average Hours", ScreenTime.averageScreenTime))
                .foregroundStyle(Color.green)
                .annotation(position: .trailing, alignment: .center)  {
                    Text("avg")
                        .font(.caption)
                        .foregroundColor(.green)
                }
        }
        .chartForegroundStyleScale(["Social Media": .blue, "Productivity": .cyan, "Internet": .orange, "Other": .gray.opacity(0.25)])
        .padding()
        .frame(height: 300)
        .navigationTitle(ChartTypeExample.screenTimeBar.displayTitle)
    }
}

struct ScreenTimeBarChart_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTimeBarChart()
    }
}

//
//  StackedBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StackedBarChartView: View {
    @State var toys = Toy.allToys
    
    var body: some View {
        Chart(toys) {
            BarMark(x: .value("Toy Shape", $0.shape), y: .value("Total Count", $0.count))
                .foregroundStyle(by: .value("Toy Color", $0.color))
        }
        .chartForegroundStyleScale(["Green": .green, "Yellow": .yellow, "Red": .red, "Blue": .blue])
    }
}

struct StackedBarChartView_Previews: PreviewProvider {
    static var previews: some View {
        StackedBarChartView()
    }
}

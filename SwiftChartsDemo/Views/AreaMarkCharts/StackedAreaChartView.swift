//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StackedAreaChartView: View {
    @State var cheeseburgerCostsByItem = Food.cheeseburgerCostsByItem

    var body: some View {
        Chart(cheeseburgerCostsByItem) {
            //                AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price)) // Absolute costs
            //                AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price), stacking: .normalized) // Relative costs
            AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price), stacking: .center) // Center baseline
                .foregroundStyle(by: .value("Food Item", $0.name))
        }
    }
}

struct StackedAreaChartView_Previews: PreviewProvider {
    static var previews: some View {
        StackedAreaChartView()
    }
}

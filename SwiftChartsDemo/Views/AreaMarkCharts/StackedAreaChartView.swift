//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct StackedAreaChartView: View {
    @State var cheeseburgerCostsByItem = Food.cheeseburgerPricesByItem

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Chart(cheeseburgerCostsByItem) {
                    AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price)) // Absolute costs
                        .foregroundStyle(by: .value("Food Item", $0.name))
                }
                .padding()
                .frame(height: 300)

                Chart(cheeseburgerCostsByItem) {
                    AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price), stacking: .normalized) // Relative costs
                        .foregroundStyle(by: .value("Food Item", $0.name))
                }
                .padding()
                .frame(height: 300)

                Chart(cheeseburgerCostsByItem) {
                    AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price), stacking: .center) // Center baseline
                        .foregroundStyle(by: .value("Food Item", $0.name))
                }
                .padding()
                .frame(height: 300)
            }
        }
        .navigationTitle(ChartTypeExample.stackedArea.displayTitle)
    }
}

struct StackedAreaChartView_Previews: PreviewProvider {
    static var previews: some View {
        StackedAreaChartView()
    }
}

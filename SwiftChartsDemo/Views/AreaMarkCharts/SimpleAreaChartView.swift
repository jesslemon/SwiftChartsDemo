//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct SimpleAreaChartView: View {
    @State var cheeseburgers = Food.cheeseburgerPrices

    var body: some View {
        Chart(cheeseburgers) {
            AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price))
                .foregroundStyle(Color.red)
                .opacity(0.5)
        }
        .padding()
        .frame(height: 300)
        .navigationTitle(ChartTypeExample.simpleArea.displayTitle)
    }
}

struct SimpleAreaChartView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAreaChartView()
    }
}

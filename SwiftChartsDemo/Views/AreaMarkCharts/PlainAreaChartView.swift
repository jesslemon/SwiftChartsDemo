//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PlainAreaChartView: View {
    @State var cheeseburgers = Food.cheeseburgerCosts

    var body: some View {
        Chart(cheeseburgers) {
            AreaMark(x: .value("Year", $0.date), y: .value("Cost", $0.price))
                .foregroundStyle(Color.red)
                .opacity(0.5)
        }
    }
}

struct PlainAreaChartView_Previews: PreviewProvider {
    static var previews: some View {
        PlainAreaChartView()
    }
}

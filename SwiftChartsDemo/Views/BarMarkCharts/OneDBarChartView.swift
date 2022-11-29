//
//  1DBarChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct OneDBarChartView: View {
    @State var toys = Toy.blueToys

    var body: some View {
        Chart(toys) {
            BarMark(x: .value("Total Count", $0.count))
                .foregroundStyle(by: .value("Toy Shape", $0.shape))
        }
    }
}

struct _DBarChartView_Previews: PreviewProvider {
    static var previews: some View {
        OneDBarChartView()
    }
}

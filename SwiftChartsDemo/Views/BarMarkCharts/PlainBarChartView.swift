//
//  ChartView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct PlainBarChartView: View {
    @State var toys = Toy.allToys
    
    //    var body: some View {
    //        Chart {
    //            ForEach(toys) { toy in
    //                BarMark(x: .value("Toy Shape", toy.shape), y: .value("Total Count", toy.count))
    //                    .foregroundStyle(Color.red)
    //                    .opacity(0.5)
    //                    .cornerRadius(10)
    //            }
    //        }
    //    }
    
    var body: some View {
        Chart(toys) {
            BarMark(x: .value("Toy Shape", $0.shape), y: .value("Total Count", $0.count))
                .foregroundStyle(Color.red)
                .opacity(0.5)
                .cornerRadius(10)
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        PlainBarChartView()
    }
}

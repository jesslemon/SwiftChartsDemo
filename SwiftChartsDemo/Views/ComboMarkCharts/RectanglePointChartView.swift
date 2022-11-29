//
//  SwiftUIView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import Charts
import SwiftUI

struct RectanglePointChartView: View {
    @State var allCoordinates = Coordinate.allCoordinates

    var body: some View {
        Chart(allCoordinates) {
            RectangleMark(xStart: .value("Rect Start Width", $0.x - 0.25),
                          xEnd: .value("Rect End Width", $0.x + 0.25),
                          yStart: .value("Rect Start Height", $0.y - 0.25),
                          yEnd: .value("Rect End Height", $0.y + 0.25))
            .opacity(0.5)
            
            PointMark(x: .value("X", $0.x), y: .value("Y", $0.x))
        }
    }
}

struct RectanglePointChartView_Previews: PreviewProvider {
    static var previews: some View {
        RectanglePointChartView()
    }
}

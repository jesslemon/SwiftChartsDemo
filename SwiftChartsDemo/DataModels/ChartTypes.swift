//
//  ChartTypes.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

enum ChartType: CaseIterable, Identifiable {
    case area
    case bar
    case line
    case point
    case rectangle
    case rule
    
    var id: String { displayTitle }
    
    var displayTitle: String {
        switch self {
        case .area: return "Area"
        case .bar: return "Bar"
        case .line: return "Line"
        case .point: return "Point"
        case .rectangle: return "Rectangle"
        case .rule: return "Rule"
        }
    }
    
    var examples: [ChartTypeExample] {
        switch self {
        case .area: return []
        case .bar:
            return [.batteryLevel, .cumulativeBar, .floorsBar, .pyramid, .screenTimeBar, .scrollingBar, .singleBar, .singleBarThreshold, .soundBar, .timeSheetBar]
        case .line: return []
        case .point: return []
        case .rectangle: return []
        case .rule: return []
        }
    }
}

enum ChartTypeExample: Identifiable {
    case batteryLevel
    case cumulativeBar
    case floorsBar
    case pyramid
    case screenTimeBar
    case scrollingBar
    case singleBar
    case singleBarThreshold
    case soundBar
    case stockageBar
    case timeSheetBar
    
    var id: String { displayTitle }
    
    var displayTitle: String {
        switch self {
        case .batteryLevel: return "Battery Level"
        case .cumulativeBar: return "Cumulative Bar"
        case .floorsBar: return "Floors Bar"
        case .pyramid: return "Pyramid"
        case .screenTimeBar: return "Screen Time Bar"
        case .scrollingBar: return "Scrolling Bar"
        case .singleBar: return "Single Bar"
        case .singleBarThreshold: return "Single Bar Threshold"
        case .soundBar: return "Sound Bar"
        case .stockageBar: return "Stockage Bar"
        case .timeSheetBar: return "Time Sheet Bar"
        }
    }

    @ViewBuilder var destinationView: some View {
        switch self {
        case .batteryLevel: PlainBarChartView()
        case .cumulativeBar: CumulativeBarChart()
        case .floorsBar: PlainBarChartView()
        case .pyramid: PyramidBarChart()
        case .screenTimeBar: PlainBarChartView()
        case .scrollingBar: ScrollingBarChart()
        case .singleBar: SingleBarChart()
        case .singleBarThreshold: SingleBarThresholdChart()
        case .soundBar: PlainBarChartView()
        case .stockageBar: PlainBarChartView()
        case .timeSheetBar: PlainBarChartView()
        }
    }
}

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
        case .area:
            return [.rangeArea, .simpleArea, .stackedArea]
        case .bar:
            return [.cumulativeBar, .pyramidBar, .screenTimeBar, .scrollingBar, .singleBar, .singleBarThreshold, .soundBar, .storageBar, .timeSheetBar]
        case .line:
            return [.gradientLine, .multipleLine, .multipleLineThreshold, .pointLine, .simpleLine]
        case .point:
            return [.pointAverage, .simplePoint, .stackedPoint]
        case .rectangle:
            return [.heatMap, .rectanglePoint, .simpleRectangle]
        case .rule:
            return [.simpleRule, .stackedRule]
        }
    }
}

enum ChartTypeExample: Identifiable {
    case rangeArea
    case simpleArea
    case stackedArea
    case cumulativeBar
    case pyramidBar
    case screenTimeBar
    case scrollingBar
    case singleBar
    case singleBarThreshold
    case soundBar
    case storageBar
    case timeSheetBar
    case gradientLine
    case multipleLine
    case multipleLineThreshold
    case pointLine
    case simpleLine
    case pointAverage
    case simplePoint
    case stackedPoint
    case heatMap
    case rectanglePoint
    case simpleRectangle
    case simpleRule
    case stackedRule
    
    var id: String { displayTitle }
    
    var displayTitle: String {
        switch self {
        case .rangeArea: return "Range"
        case .simpleArea, .simpleLine, .simplePoint, .simpleRectangle, .simpleRule: return "Simple"
        case .stackedArea, .stackedPoint, .stackedRule: return "Stacked"
        case .cumulativeBar: return "Cumulative"
        case .pyramidBar: return "Pyramid"
        case .screenTimeBar: return "Screen Time"
        case .scrollingBar: return "Scrolling"
        case .singleBar: return "Single"
        case .singleBarThreshold: return "Single Threshold"
        case .soundBar: return "Sound"
        case .storageBar: return "Storage"
        case .timeSheetBar: return "Time Sheet"
        case .gradientLine: return "Gradient"
        case .multipleLine: return "Multiple"
        case .multipleLineThreshold: return "Multiple Threshold"
        case .pointLine: return "Point Line"
        case .pointAverage: return "Point Average"
        case .heatMap: return "Heat Map"
        case .rectanglePoint: return "Rectangle Point"
        }
    }

    @ViewBuilder var destinationView: some View {
        switch self {
        case .rangeArea: RangeAreaChartView()
        case .simpleArea: SimpleAreaChartView()
        case .stackedArea: StackedAreaChartView()
        case .cumulativeBar: CumulativeBarChart()
        case .pyramidBar: PyramidBarChart()
        case .screenTimeBar: ScreenTimeBarChart()
        case .scrollingBar: ScrollingBarChart()
        case .singleBar: SingleBarChart()
        case .singleBarThreshold: SingleBarThresholdChart()
        case .soundBar: SoundBarChart()
        case .storageBar: StorageBarChartView()
        case .timeSheetBar: TimeSheetBarChart()
        case .simpleLine: SimpleLineChart()
        case .gradientLine: GradientLineChart()
        case .multipleLine: MultipleLineChart()
        case .multipleLineThreshold: MultipleLineThresholdChart()
        case .pointLine: PointLineChart()
        case .simplePoint: SimplePointChart()
        case .stackedPoint: StackedPointChart()
        case .simpleRectangle: SimpleRectangleChart()
        case .simpleRule: SimpleRuleMarkChart()
        case .stackedRule: StackedRuleMarkChart()
        case .pointAverage: PointAverageChart()
        case .heatMap: HeatMapChart()
        case .rectanglePoint: RectanglePointChart()
        }
    }
}

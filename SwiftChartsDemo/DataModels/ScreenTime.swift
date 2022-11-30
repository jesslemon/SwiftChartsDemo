//
//  ScreenTime.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import SwiftUI

struct ScreenTime: Identifiable {
    let weekday: String
    let hours: Double
    let category: String
    let id = UUID()
    
    static var averageScreenTime: Double {
        var totalHours = 0.0
        let groupedScreenTime = Dictionary(grouping: allScreenTime, by: { $0.weekday })
        for key in groupedScreenTime.keys {
            let totalWeekdayHours = groupedScreenTime[key]?.reduce(0.0) { partialResult, screenTime in
                return partialResult + screenTime.hours
            } ?? 0
            totalHours += totalWeekdayHours
        }
        return totalHours / Double(groupedScreenTime.keys.count)
    }
    
    static var totalScreenTimePerDay: [ScreenTime] {
        var screenTime: [ScreenTime] = []
        
        let groupedScreenTime = Dictionary(grouping: allScreenTime, by: { $0.weekday })
        
        let weekdays = ["M", "Tu", "W", "Th", "F", "Sa", "Su"]
        
        for key in weekdays {
            guard let weekday = groupedScreenTime[key]
            else { continue }
            
            let totalWeekdayHours = weekday.reduce(0.0) { partialResult, screenTime in
                return partialResult + screenTime.hours
            }
            
            screenTime.append(ScreenTime(weekday: key, hours: totalWeekdayHours, category: "All"))
        }
        
        return screenTime
    }

    static var allScreenTime: [ScreenTime] {
        return [ScreenTime(weekday: "M", hours: 0.5, category: "Social Media"),
                ScreenTime(weekday: "M", hours: 0.75, category: "Productivity"),
                ScreenTime(weekday: "M", hours: 0.25, category: "Internet"),
                ScreenTime(weekday: "M", hours: 0.5, category: "Other"),
                ScreenTime(weekday: "Tu", hours: 0.5, category: "Social Media"),
                ScreenTime(weekday: "Tu", hours: 0.5, category: "Productivity"),
                ScreenTime(weekday: "Tu", hours: 0.1, category: "Internet"),
                ScreenTime(weekday: "Tu", hours: 1.15, category: "Other"),
                ScreenTime(weekday: "W", hours: 0.4, category: "Social Media"),
                ScreenTime(weekday: "W", hours: 0.1, category: "Productivity"),
                ScreenTime(weekday: "W", hours: 0.5, category: "Internet"),
                ScreenTime(weekday: "W", hours: 0.0, category: "Other"),
                ScreenTime(weekday: "Th", hours: 0.5, category: "Social Media"),
                ScreenTime(weekday: "Th", hours: 0.5, category: "Productivity"),
                ScreenTime(weekday: "Th", hours: 0.25, category: "Internet"),
                ScreenTime(weekday: "Th", hours: 0.0, category: "Other"),
                ScreenTime(weekday: "F", hours: 0.5, category: "Social Media"),
                ScreenTime(weekday: "F", hours: 0.5, category: "Productivity"),
                ScreenTime(weekday: "F", hours: 0.5, category: "Internet"),
                ScreenTime(weekday: "F", hours: 0.0, category: "Other"),
                ScreenTime(weekday: "Sa", hours: 1.0, category: "Social Media"),
                ScreenTime(weekday: "Sa", hours: 0.25, category: "Productivity"),
                ScreenTime(weekday: "Sa", hours: 0.75, category: "Internet"),
                ScreenTime(weekday: "Sa", hours: 0.75, category: "Other"),
                ScreenTime(weekday: "Su", hours: 2.0, category: "Social Media"),
                ScreenTime(weekday: "Su", hours: 0.1, category: "Productivity"),
                ScreenTime(weekday: "Su", hours: 0.5, category: "Internet"),
                ScreenTime(weekday: "Su", hours: 0.5, category: "Other")]
    }
}

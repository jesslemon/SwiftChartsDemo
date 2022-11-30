//
//  TimeEntry.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import SwiftUI

struct TimeEntry: Identifiable {
    let category: String
    let startTime: String
    let endTime: String
    let id = UUID()
    
    static var allTimeEntries: [TimeEntry] {
        return [TimeEntry(category: "Code Review", startTime: "9:00", endTime: "9:30"),
                TimeEntry(category: "Code Review", startTime: "10:00", endTime: "11:00"),
                TimeEntry(category: "App Improvement", startTime: "11:30", endTime: "12:30"),
                TimeEntry(category: "App Improvement", startTime: "1:00", endTime: "1:30"),
                TimeEntry(category: "App Maintenance", startTime: "2:00", endTime: "2:30")]
    }
}

//
//  Weather.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct Weather: Identifiable {
    let city: String
    let date: Date
    let maximumTemperature: Double
    let minimumTemperature: Double
    let id = UUID()
    
    var averageTemperature: Double { (maximumTemperature + minimumTemperature) / 2.0 }
    
    static var today = Date()

    static var thisWeeksWeatherSyracuse: [Weather] {
        return thisWeeksWeatherSyracuseOrlando.filter { $0.city == "Syracuse" }
    }
    
    static var thisWeeksWeatherSyracuseOrlando: [Weather] {
        return [Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -3, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -2, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -1, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 1, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 2, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 3, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -3, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -2, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -1, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 1, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 2, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 3, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68))]
    }
    
    static var mixedTwoWeeksWeatherSyracuseOrlando: [Weather] {
        return [Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -14, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -13, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -12, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -11, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -10, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -9, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -8, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -7, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -6, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -5, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -4, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -3, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -2, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: -1, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 1, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 2, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 3, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 4, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 5, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 6, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 7, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 8, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 9, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 10, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 11, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Syracuse",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 12, to: today) ?? today,
                        maximumTemperature: Double.random(in: 30..<46),
                        minimumTemperature: Double.random(in: 15..<30)),
                Weather(city: "Orlando",
                        date: Calendar.autoupdatingCurrent.date(byAdding: .day, value: 13, to: today) ?? today,
                        maximumTemperature: Double.random(in: 68..<81),
                        minimumTemperature: Double.random(in: 55..<68))]
    }
}

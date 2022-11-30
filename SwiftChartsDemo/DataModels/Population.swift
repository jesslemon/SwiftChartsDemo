//
//  Population.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct Population: Identifiable {
    var ageGroup: String
    var gender: String
    var count: Double
    var id = UUID()
    
    static var totalPopulationCounts: [Population] {
        var population: [Population] = []
        
        let groupedPopulation = Dictionary(grouping: allPopulation, by: { $0.ageGroup })
        for key in groupedPopulation.keys.sorted(by: { $0 < $1 }) {
            guard let ageGroup = groupedPopulation[key]
            else { continue }
            
            let totalCount = ageGroup.reduce(0.0) { partialResult, value in
                return partialResult + value.count
            }
            
            population.append(Population(ageGroup: key, gender: "All", count: totalCount))
        }
        
        return population
    }

    static var allPopulation: [Population] = [
        Population(ageGroup: "91-100", gender: "Male", count: 0.53),
        Population(ageGroup: "91-100", gender: "Female", count: 1.30),
        Population(ageGroup: "81-90", gender: "Male", count: 3.43),
        Population(ageGroup: "81-90", gender: "Female", count: 5.41),
        Population(ageGroup: "71-80", gender: "Male", count: 8.00),
        Population(ageGroup: "71-80", gender: "Female", count: 9.79),
        Population(ageGroup: "61-70", gender: "Male", count: 15.37),
        Population(ageGroup: "61-70", gender: "Female", count: 17.01),
        Population(ageGroup: "51-60", gender: "Male", count: 21.22),
        Population(ageGroup: "51-60", gender: "Female", count: 22.34),
        Population(ageGroup: "41-50", gender: "Male", count: 20.84),
        Population(ageGroup: "41-50", gender: "Female", count: 21.21),
        Population(ageGroup: "31-40", gender: "Male", count: 20.54),
        Population(ageGroup: "31-40", gender: "Female", count: 20.48),
        Population(ageGroup: "21-30", gender: "Male", count: 22.82),
        Population(ageGroup: "21-30", gender: "Female", count: 21.92),
        Population(ageGroup: "11-20", gender: "Male", count: 21.51),
        Population(ageGroup: "11-20", gender: "Female", count: 20.51),
        Population(ageGroup: "0-10", gender: "Male", count: 22.75),
        Population(ageGroup: "0-10", gender: "Female", count: 21.78)
    ]
}

//
//  ToyShape.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct Toy: Identifiable {
    var color: String
    var shape: String
    var count: Double
    var id = UUID()
    
    static var totalToyCounts: [Toy] {
        var toys: [Toy] = []
        
        let groupedToys = Dictionary(grouping: allToys, by: { $0.shape })
        for key in groupedToys.keys {
            guard let toyShape = groupedToys[key]
            else { continue }
            
            let totalCount = toyShape.reduce(0.0) { partialResult, value in
                return partialResult + value.count
            }
            
            toys.append(Toy(color: "Blue", shape: key, count: totalCount))
        }
        
        return toys
    }

    static var allToys: [Toy] {
        return [Toy(color: "Green", shape: "Square", count: Double.random(in: 0..<100)),
                Toy(color: "Green", shape: "Circle", count: Double.random(in: 0..<100)),
                Toy(color: "Green", shape: "Triangle", count: Double.random(in: 0..<100)),
                Toy(color: "Green", shape: "Rectangle", count: Double.random(in: 0..<100)),
                Toy(color: "Yellow", shape: "Square", count: Double.random(in: 0..<100)),
                Toy(color: "Yellow", shape: "Circle", count: Double.random(in: 0..<100)),
                Toy(color: "Yellow", shape: "Triangle", count: Double.random(in: 0..<100)),
                Toy(color: "Yellow", shape: "Rectangle", count: Double.random(in: 0..<100)),
                Toy(color: "Red", shape: "Square", count: Double.random(in: 0..<100)),
                Toy(color: "Red", shape: "Circle", count: Double.random(in: 0..<100)),
                Toy(color: "Red", shape: "Triangle", count: Double.random(in: 0..<100)),
                Toy(color: "Red", shape: "Rectangle", count: Double.random(in: 0..<100)),
                Toy(color: "Blue", shape: "Square", count: Double.random(in: 0..<100)),
                Toy(color: "Blue", shape: "Circle", count: Double.random(in: 0..<100)),
                Toy(color: "Blue", shape: "Triangle", count: Double.random(in: 0..<100)),
                Toy(color: "Blue", shape: "Rectangle", count: Double.random(in: 0..<100))]
    }
}

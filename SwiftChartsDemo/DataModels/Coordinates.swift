//
//  Coordinates.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct Coordinate: Identifiable {
    let x: Double
    let y: Double
    let id = UUID()
    
    static var allCoordinates: [Coordinate] {
        return [Coordinate(x: 5, y: 5),
                Coordinate(x: 2.5, y: 2.5),
                Coordinate(x: 3, y: 3)]
    }
}

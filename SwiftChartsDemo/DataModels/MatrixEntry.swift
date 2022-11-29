//
//  MatrixEntry.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct MatrixEntry: Identifiable {
    let positive: String
    let negative: String
    let number: Double
    let id = UUID()
    
    static var allEntries: [MatrixEntry] {
        return [MatrixEntry(positive: "+", negative: "+", number: 125),
                MatrixEntry(positive: "+", negative: "-", number: 10),
                MatrixEntry(positive: "-", negative: "-", number: 80),
                MatrixEntry(positive: "-", negative: "+", number: 10)]
    }
}

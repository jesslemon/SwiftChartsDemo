//
//  Storage.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import SwiftUI

struct Storage: Identifiable {
    let category: String
    let amount: Double
    let id = UUID()
    
    static var allStorage: [Storage] {
        return [Storage(category: "Apps", amount: 30),
                Storage(category: "Photos", amount: 8),
                Storage(category: "iOS", amount: 7),
                Storage(category: "SystemData", amount: 3)]
    }
}

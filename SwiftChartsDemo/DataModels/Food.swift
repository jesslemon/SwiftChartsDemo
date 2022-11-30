//
//  File.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct Food: Identifiable {
    let name: String
    let price: Double
    let date: Date
    let id = UUID()
    
    init(name: String, price: Double, year: Int) {
        self.name = name
        self.price = price
        self.date = Calendar.autoupdatingCurrent.date(from: DateComponents(year: year)) ?? Date()
    }
    
    static var cheeseburgerPrices: [Food] {
        return [Food(name: "Cheeseburger", price: 0.21, year: 1960),
                Food(name: "Cheeseburger", price: 0.18, year: 1970),
                Food(name: "Cheeseburger", price: 0.34, year: 1980),
                Food(name: "Cheeseburger", price: 0.71, year: 1990),
                Food(name: "Cheeseburger", price: 0.77, year: 2000),
                Food(name: "Cheeseburger", price: 0.77, year: 2010),
                Food(name: "Cheeseburger", price: 1.00, year: 2020)]
    }
    
    static var cheeseburgerPricesByItem: [Food] {
        return [Food(name: "Burger", price: 0.09, year: 1960),
                Food(name: "Cheese", price: 0.05, year: 1960),
                Food(name: "Bun", price: 0.07, year: 1960),
                Food(name: "Burger", price: 0.10, year: 1970),
                Food(name: "Cheese", price: 0.05, year: 1970),
                Food(name: "Bun", price: 0.03, year: 1970),
                Food(name: "Burger", price: 0.16, year: 1980),
                Food(name: "Cheese", price: 0.11, year: 1980),
                Food(name: "Bun", price: 0.07, year: 1980),
                Food(name: "Burger", price: 0.31, year: 1990),
                Food(name: "Cheese", price: 0.25, year: 1990),
                Food(name: "Bun", price: 0.15, year: 1990),
                Food(name: "Burger", price: 0.32, year: 2000),
                Food(name: "Cheese", price: 0.25, year: 2000),
                Food(name: "Bun", price: 0.20, year: 2000),
                Food(name: "Burger", price: 0.29, year: 2010),
                Food(name: "Cheese", price: 0.27, year: 2010),
                Food(name: "Bun", price: 0.21, year: 2010),
                Food(name: "Burger", price: 0.43, year: 2020),
                Food(name: "Cheese", price: 0.30, year: 2020),
                Food(name: "Bun", price: 0.27, year: 2020)]
    }
}

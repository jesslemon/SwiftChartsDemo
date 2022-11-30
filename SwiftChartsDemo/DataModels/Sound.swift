//
//  Sound.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import SwiftUI

struct Sound: Identifiable {
    let decibel: Double
    let secondsTimestamp: Int
    let id = UUID()
    
    static var allSounds: [Sound] {
        return [Sound(decibel: 18, secondsTimestamp: 1),
                Sound(decibel: 58, secondsTimestamp: 2),
                Sound(decibel: 46, secondsTimestamp: 3),
                Sound(decibel: 36, secondsTimestamp: 4),
                Sound(decibel: 28, secondsTimestamp: 5),
                Sound(decibel: 22, secondsTimestamp: 6),
                Sound(decibel: 18, secondsTimestamp: 7),
                Sound(decibel: 16, secondsTimestamp: 8),
                Sound(decibel: 14, secondsTimestamp: 9),
                Sound(decibel: 12, secondsTimestamp: 10),
                Sound(decibel: 10, secondsTimestamp: 11),
                Sound(decibel: 10, secondsTimestamp: 12),
                Sound(decibel: 10, secondsTimestamp: 13),
                Sound(decibel: 10, secondsTimestamp: 14),
                Sound(decibel: 12, secondsTimestamp: 15),
                Sound(decibel: 12, secondsTimestamp: 16),
                Sound(decibel: 46, secondsTimestamp: 17),
                Sound(decibel: 36, secondsTimestamp: 18),
                Sound(decibel: 28, secondsTimestamp: 19),
                Sound(decibel: 22, secondsTimestamp: 20),
                Sound(decibel: 18, secondsTimestamp: 21),
                Sound(decibel: 16, secondsTimestamp: 22),
                Sound(decibel: 18, secondsTimestamp: 23),
                Sound(decibel: 18, secondsTimestamp: 24),
                Sound(decibel: 16, secondsTimestamp: 25),
                Sound(decibel: 14, secondsTimestamp: 26),
                Sound(decibel: 12, secondsTimestamp: 27),
                Sound(decibel: 10, secondsTimestamp: 28),
                Sound(decibel: 10, secondsTimestamp: 29)]
    }
}

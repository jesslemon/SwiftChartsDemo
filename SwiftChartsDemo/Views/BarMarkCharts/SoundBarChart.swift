//
//  SoundBarChart.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/29/22.
//

import Charts
import SwiftUI

struct SoundBarChart: View {
    @State var allSounds = Sound.allSounds
    
    var body: some View {
        Chart(allSounds) {
            BarMark(x: .value("Time", $0.secondsTimestamp), y: .value("Decibel", $0.decibel), stacking: .center)
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .padding()
        .frame(height: 300)
        .navigationTitle(ChartTypeExample.soundBar.displayTitle)
    }
}

struct SoundBarChart_Previews: PreviewProvider {
    static var previews: some View {
        SoundBarChart()
    }
}

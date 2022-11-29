//
//  ChartTypeExamplesListView.swift
//  SwiftChartsDemo
//
//  Created by Jessica Lemon on 11/28/22.
//

import SwiftUI

struct ChartTypeExamplesListView: View {
    let type: ChartType
    
    var body: some View {
        List(type.examples) { example in
            NavigationLink(destination: { example.destinationView },
                           label: { Text(example.displayTitle) })
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(type.displayTitle)
    }
}

struct ChartTypeExamplesListView_Previews: PreviewProvider {
    static var previews: some View {
        ChartTypeExamplesListView(type: .bar)
    }
}

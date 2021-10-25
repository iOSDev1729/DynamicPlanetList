//
//  DynamicList.swift
//  PlanetsListView
//
//  Created by Radhika Chilukuri on 25/10/21.
//

import Foundation
import SwiftUI

struct SolarSystem:Identifiable {
    var id: Int
    
    var name: String
    var type: String
    var color: Color
    var position: Int?
}

/* @State var dynamicList = [
    SolarSystem(name: "Earth", type: "Planet", color: .green, position: 0),
    SolarSystem(name: "Moon", type: "Star", color: .blue, position: 1),
    SolarSystem(name: "Sun", type: "Star", color: .orange, position: 3),
    SolarSystem(name: "Mercury", type: "Planet", color: .pink, position: 3),
    SolarSystem(name: "Jupiter", type: "Planet", color: .purple, position: 5)
]
 in Content view */

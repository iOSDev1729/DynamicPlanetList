//
//  ContentView.swift
//  PlanetsListView
//
//  Created by Radhika Chilukuri on 25/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var dynamicList = [
        SolarSystem(id: 0, name: "Earth", type: "Planet", color: .green, position: 1),
        SolarSystem(id: 1, name: "Mercury", type: "Planet", color: .blue, position: 1),
        SolarSystem(id: 2, name: "Sun", type: "Star", color:.gray, position: 1),
        SolarSystem(id: 3, name: "Venus", type: "Planet", color: .purple, position: 2),
        SolarSystem(id: 4, name: "Mars", type: "Planet", color: .red, position: 4)
        ]
    var body: some View {
        NavigationView {
            List(dynamicList) { planet in
                HStack {
                    Text("\(planet.id)")
                    Text(planet.name)
                    Text(planet.type).foregroundColor(planet.color)
                    if let newPosition = planet.position {
                        Text("\(newPosition)") }

                }
            }.navigationBarTitle(Text("Solar System"))
            .navigationBarItems(trailing: Button(action: addPlanet,label: {Text("Add")}))
            //MARK: Add button will be added at the top right corner with trailing option . with leading option it will add at the left top corner
                 
            }
        
    }
    func addPlanet() {
        if let randomPlanet = dynamicList.randomElement(){
            dynamicList.append(randomPlanet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

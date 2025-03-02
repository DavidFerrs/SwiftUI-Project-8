//
//  ContentView.swift
//  Moonshot
//
//  Created by David Ferreira on 23/02/25.
//

import SwiftUI

struct ContentView: View {
    let astrounauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showGridView = false
    
    var body: some View {
        NavigationStack{
            Group {
                if showGridView {
                    GridView(missions: missions, astronauts: astrounauts)
                } else {
                    ListView(missions: missions, astronauts: astrounauts)
                }
            }
            .navigationTitle("Moonshot")
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .toolbar() {
                Button("Show Grid") {
                    showGridView.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  AstronautView.swift
//  Moonshot
//
//  Created by David Ferreira on 01/03/25.
//

import SwiftUI

struct AstronautView: View {
    let astrounaut: Astronaut
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Image(astrounaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astrounaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astrounaut.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astrounaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}

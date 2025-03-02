//
//  HorizontalAstrounatsList.swift
//  Moonshot
//
//  Created by David Ferreira on 01/03/25.
//

import SwiftUI

struct HorizontalAstrounatsList: View {
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack{
                ForEach(crew, id: \.role) { member in
                    NavigationLink {
                        AstronautView(astrounaut: member.astronaut)
                    } label: {
                        HStack{
                            Image(member.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(.capsule)
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, style: StrokeStyle(lineWidth: 1))
                                )
                            
                            VStack(alignment: .leading) {
                                Text(member.astronaut.name)
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                
                                Text(member.role)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    
    HorizontalAstrounatsList(crew: [CrewMember(role: "Comander", astronaut: Astronaut(id: "1", name: "Aldrin", description: "askdasjdsasasd"))])
}

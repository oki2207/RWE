//
//  PlayerRow.swift
//  RWE
//
//  Created by Olli on 08.05.23.
//

import SwiftUI

struct PlayerRow: View {
    var player: Player
    
    var body: some View {
        HStack {
            if let playerPhoto = player.photo {
                Image(playerPhoto)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
            
            VStack(alignment: .leading) {
                Text(player.name ?? "")
                    .font(.headline)
                
                Text(player.position ?? "")
                
                Text("\(player.birthPlace ?? ""), \(player.birthDate ?? "")")
                
                Text("\(player.previousClub ?? "") - seit \(player.since ?? "")")
            }
            
            Spacer()
        }
        .padding(.vertical, 8)
    }
}


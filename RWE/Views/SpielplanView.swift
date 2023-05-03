//
//  SpielplanView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct SpielplanView: View {
    var body: some View {
        Image("screen4") // Hier musst du den Namen deines Bildes angeben
            .resizable()
            .scaledToFill()
            .opacity(0.3)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SpielplanView_Previews: PreviewProvider {
    static var previews: some View {
        SpielplanView()
    }
}

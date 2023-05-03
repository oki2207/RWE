//
//  TabelleView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct TabelleView: View {
    var body: some View {
        Image("screen3") // Hier musst du den Namen deines Bildes angeben
            .resizable()
            .scaledToFill()
            .opacity(0.3)
            .edgesIgnoringSafeArea(.all)
    }
}

struct TabelleView_Previews: PreviewProvider {
    static var previews: some View {
        TabelleView()
    }
}

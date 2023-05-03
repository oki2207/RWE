//
//  KaderView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct KaderView: View {
    var body: some View {
        Image("externalimages-2") // Hier musst du den Namen deines Bildes angeben
            .resizable()
            .scaledToFill()
            .opacity(0.3)
            .edgesIgnoringSafeArea(.all)
    }
}
        

struct KaderView_Previews: PreviewProvider {
    static var previews: some View {
        KaderView()
    }
}

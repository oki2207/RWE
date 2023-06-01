//
//  WetterSmallView.swift
//  RWE
//
//  Created by Olli on 01.06.23.
//

import SwiftUI

struct WetterSmallView: View {
    @State var wetterDatum: WetterDatum
    
    var body: some View {
        HStack {
            Text(wetterDatum.stadt!)
                .font(.title2)
                .padding()
            
            Spacer()
            
            HStack {
                Image(systemName: wetterDatum.thumbnail!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Text(wetterDatum.temperatur_jetzt!)
                    .font(.title2)
            }
            .padding()
        }
    }
}

struct WetterSmallView_Previews: PreviewProvider {
    static var viewModel = WetterViewModel()
    static let wetter = Wetter(
        stadt: "Berlin",
        land: "DE",
        witterung: "Sonnig",
        temperatur_jetzt: "25.2°C",
        temperatur_max: "27.8°C",
        temperatur_min: "19°C",
        windgeschwindigkeit: "10km/h",
        feuchtigkeit: "40%",
        thumbnail: thumbnailFromWitterung("Sonnig")
    )
    
    static var previews: some View {
        WetterSmallView(
          wetterDatum: {
            let wetterDatum = WetterDatum(context: viewModel.persistentContainer.viewContext)
            wetterDatum.id = UUID()
            viewModel.updateWetterDatum(wetterDatum, wetter)
            return wetterDatum
          }()
        )
    }
}


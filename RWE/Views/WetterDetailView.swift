//
//  WetterDetailView.swift
//  RWE
//
//  Created by Olli on 01.06.23.
//

import SwiftUI

struct WetterDetailView: View {
    @State var wetterDatum: WetterDatum
    
    var body: some View {
        VStack {
            Text(stadtTitel(wetterDatum))
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Image(systemName: wetterDatum.thumbnail!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(wetterDatum.witterung!)
                .font(.title)
                .fontWeight(.bold)
            
            HStack{
                Text(wetterDatum.temperatur_jetzt!)
                    .font(.title)
                    .padding()
                
                VStack {
                    Text(wetterDatum.temperatur_max!)
                    Text(wetterDatum.temperatur_min!)
                }
            }
            
            HStack {
                HStack{
                    Image(systemName: "wind")
                    Text(wetterDatum.windgeschwindigkeit!)
                }
                .padding()
                
                HStack{
                    Image(systemName: "drop")
                    Text(wetterDatum.feuchtigkeit!)
                }
                .padding()
            }
            .padding()
            
            Spacer()
        }
    }
}
                 
func stadtTitel(_ wetterDatum: WetterDatum) -> String {
     let stadt = wetterDatum.stadt!
    let land = wetterDatum.land! == "DE" ? "" : ", (\(wetterDatum.land!))"
     return "Wetter in \(stadt)\(land)"
}

struct WeatherView_Previews: PreviewProvider {
    static var viewModel = WetterViewModel()
    static let wetter = Wetter(
        stadt: "HAFENSTRASSE, ESSEN",
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
        WetterDetailView(
          wetterDatum: {
            let wetterDatum = WetterDatum(context: viewModel.persistentContainer.viewContext)
            wetterDatum.id = UUID()
            viewModel.updateWetterDatum(wetterDatum, wetter)
            return wetterDatum
          }()
        )
    }
}


//
//  Wetter.swift
//  RWE
//
//  Created by Olli on 01.06.23.
//

import CoreData

struct Wetter {
    var stadt: String
    var land: String
    var witterung: String
    var temperatur_jetzt: String
    var temperatur_max: String
    var temperatur_min: String
    var windgeschwindigkeit: String
    var feuchtigkeit: String
    var thumbnail: String

    static func fromWetterResponse(_ wetterResponse: WetterResponse) -> Wetter {
        
        let stadt = wetterResponse.name
        let land = wetterResponse.sys.country
        let witterung = wetterResponse.weather.first!.description
        let temperatur_jetzt = temperatur(wetterResponse.main.temp)
        let temperatur_max = temperatur(wetterResponse.main.temp_max)
        let temperatur_min = temperatur(wetterResponse.main.temp_min)
        let windgeschwindigkeit = gerundet(wetterResponse.wind.speed)
        let feuchtigkeit = "\(wetterResponse.main.humidity)"
        let thumbnail = thumbnailFromWitterung(witterung)

        return Wetter(
            stadt: stadt,
            land: land,
            witterung: witterung,
            temperatur_jetzt: temperatur_jetzt,
            temperatur_max: temperatur_max,
            temperatur_min: temperatur_min,
            windgeschwindigkeit: windgeschwindigkeit,
            feuchtigkeit: feuchtigkeit,
            thumbnail: thumbnail
        )
    }
}

func gerundet(_ zahl: Float) -> String {
    // 3.141 => "3.1" und 2.002 => "2.0"
    let zahl = round(zahl * 10) / 10
    return zahl.truncatingRemainder(dividingBy: 1) == 0 ? String(Int(zahl)) : String(zahl)
        
}

func temperatur(_ temperatur: Float) -> String {
    return "\(gerundet(temperatur))°C"
}

func thumbnailFromWitterung(_ witterung: String) -> String {
    switch witterung {
    case "SONNIG ": return "sun.max.fill"
    case "KLARER HIMMEL ": return "sun.max.fill"
    case "LEICHT BEDECKT ": return "cloud.sun.fill"
    case "EIN PAAR WOLKEN ": return "cloud.sun.fill"
    case "BEDECKT ": return "cloud.fill"
    case "WOLKIG ": return "cloud.fill"
    case "LEICHTER REGEN ": return "cloud.drizzle.fill"
    case "MÄSSIGER REGEN ": return "cloud.rain.fill"
    case "REGEN ": return "cloud.rain.fill"
    case "GEWITTER ": return "cloud.bolt.rain.fill"
    case _: return "cloud.sun.fill"
    }
}


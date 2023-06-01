//
//  WetterModel.swift
//  RWE
//
//  Created by Olli on 01.06.23.
//

import Foundation

/*
 

 
{
  "weather": [
    {
      "description":"Klarer Himmel",
    }
  ],
  "main": {
    "temp":29.99,
    "temp_min":28.62,
    "temp_max":29.06,
    "humidity":40
  },
  "wind": {
    "speed":3.6,
  },
  "name": "Berlin"
  "sys": {
    "country": "DE"
  }
}
 
 
MARK: Wir sind interessiert an:
    wetterResponse.name
    wetterResponse.sys.country
    wetterResponse.weather.first.description
    wetterResponse.main.temp
    wetterResponse.main.temp_max
    wetterResponse.main.temp_min
    wetterResponse.main.humidity
    wetterResponse.wind.speed

*/

// TODO: Erstelle hier die notwendigen structs um das JSON zu decoden
//       Insbesondere das struct WetterResponse

struct WetterResponse: Codable, Hashable {
    var weather: [Sky]
    var main: Main
    var wind: Wind
    var name: String
    var sys: Sys
    
}

struct Sky: Codable, Hashable {
    var description: String
}

struct Main: Codable, Hashable {
    var temp: Float
    var temp_min: Float
    var temp_max: Float
    var humidity: Int
}

struct Wind: Codable, Hashable {
    var speed: Float
}

struct Sys: Codable, Hashable {
    var country: String
}



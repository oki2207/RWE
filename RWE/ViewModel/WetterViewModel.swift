//
//  WetterViewModel.swift
//  RWE
//
//  Created by Olli on 01.06.23.
//


import Foundation
import SwiftUI
import CoreData

class WetterViewModel: ObservableObject {
    let persistentContainer: NSPersistentContainer
    //HARD GECODET
    @Published var wetterEssen: Wetter = Wetter(stadt: "", land: "", witterung: "", temperatur_jetzt: "", temperatur_max: "", temperatur_min: "", windgeschwindigkeit: "", feuchtigkeit: "", thumbnail: "")
    
   //HARD GECODET
    @Published var wetterDaten: [WetterDatum] = []
    
    init() {
        persistentContainer = NSPersistentContainer(name: "WetterDaten")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Fehler beim Erstellen des ViewModels: \(error.localizedDescription)")
            }
        }
        fetchWetterDatum("ESSEN")
        createWetterDatum(wetterEssen, "ESSEN")
        saveAndReadWetterDaten()
    }
    
    func createWetterDatum(_ wetter: Wetter, _ stadt: String) {
        let wetterDatum = WetterDatum(context: persistentContainer.viewContext)
        wetterDatum.id = UUID()
        wetterDatum.stadt = stadt
        wetterDatum.stadtIntern = stadt
        updateWetterDatum(wetterDatum, wetter)
        print(stadt)
    }
    
    func saveAndReadWetterDaten() {
        do {
            try persistentContainer.viewContext.save()
            wetterDaten = try persistentContainer.viewContext.fetch(
                NSFetchRequest<WetterDatum>(entityName: "WetterDatum")
            )
        } catch {
            print("Fehler beim Speichern oder Lesen der Wetterdaten: \(error.localizedDescription)")
        }
    }
            
    func updateWetterDatum(_ wetterDatum: WetterDatum, _ wetter: Wetter) {
        wetterDatum.stadt = wetter.stadt
        wetterDatum.land = wetter.land
        wetterDatum.witterung = wetter.witterung
        wetterDatum.temperatur_jetzt = wetter.temperatur_jetzt
        wetterDatum.temperatur_max = wetter.temperatur_max
        wetterDatum.temperatur_min = wetter.temperatur_min
        wetterDatum.windgeschwindigkeit = wetter.windgeschwindigkeit
        wetterDatum.feuchtigkeit = wetter.feuchtigkeit
        wetterDatum.thumbnail = wetter.thumbnail
        saveAndReadWetterDaten()
        print("UPDATE", wetterDatum.stadt, wetterDaten)
    }

    func deleteWetterDatum(indexSet: IndexSet) {
        guard let index = indexSet.first else {
            print("Fehler beim Löschen eines WetterDatums")
            return
        }
        persistentContainer.viewContext.delete(wetterDaten[index])
        saveAndReadWetterDaten()
    }
    
    func fetchWetterDatum(_ stadt: String) {
        func create_raw_url(_ stadt: String) -> String {
            let base_url = "https://api.openweathermap.org/data/2.5/weather?q=\(stadt)&appid=\(API_KEY)"
            return "\(base_url)&units=metric&lang=de"
        }
        
        let raw_url = create_raw_url(stadt)
        let encoded_url = raw_url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        guard encoded_url != nil, let url = URL(string: encoded_url!) else {
            print("Fehler beim Erstellen der URL von \(stadt)")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("Fehler beim Fetchen der Response: \(String(describing: error?.localizedDescription))")
                print("data = \(String(describing: data))")
                print("error = \(String(describing: error))")
                return
            }
            
            do {
                let wetterResponse = try JSONDecoder().decode(WetterResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.createOrUpdateWetterDatum(stadt, Wetter.fromWetterResponse(wetterResponse))
                    self?.wetterEssen = Wetter.fromWetterResponse(wetterResponse)
                   // self?.updateWetterDatum(WetterDatum(), Wetter.fromWetterResponse(wetterResponse))
                }
            } catch {
                print("Fehler beim Decoden der Response: \(error)")
            }
        }
        
        task.resume()
    }
    
    func createOrUpdateWetterDatum(_ stadt: String, _ wetter: Wetter) {
        if let existingWetterDatum = find(stadt) {
            updateWetterDatum(existingWetterDatum, wetter)
        } else {
            createWetterDatum(wetter, stadt)
        }
    }
    
    func find(_ stadt: String) -> WetterDatum? {
        let request = NSFetchRequest<WetterDatum>(entityName: String(describing: WetterDatum.self))
        request.predicate = NSPredicate(format: "stadtIntern == %@", stadt)
        
        do {
            let results = try persistentContainer.viewContext.fetch(request)
            if results.count > 0 {
                return results.first
            } else {
                return nil
            }
        } catch {
            return nil
        }
    }
    
    func addStadt(_ stadt: String) {
        fetchWetterDatum(stadt)
    }
            
    func refresh() {
        for wetterDatum in wetterDaten {
            fetchWetterDatum(wetterDatum.stadtIntern!)
        }
    }
}


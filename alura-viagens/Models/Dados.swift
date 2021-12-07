//
//  Dados.swift
//  new-alura-viagens
//
//  Created by Marcio Orlandini on 29/11/2021.
//  Copyright © 2021 Marcio Orlandini. All rights reserved.
//

import Foundation

let viagens: [Viagem] = load("viagens.json")
let pacotesDeViagens: [PacoteDeViagem] = load("pacotes-viagens.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//
//  PokemonListService.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 6/09/22.
//

import Foundation

class PokemonListService {
    func getPokemons(onComplete: @escaping ([PokemonDTO]) -> Void,
                     onError: @escaping (String) -> Void) {
        ApiManager.shared.getCall(url: "https://pokeapi.co/api/v2/pokemon?limit=151")  {
            response in
            
            switch response {
            case .success(let data):
                do {
                    if let data = data {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        let result = try
                        decoder.decode(PokemonListDTO.self, from: data)
                    onComplete(result.results)
                        
                    }
                }catch{
                    onError("Error in JSON")
                }
            case .failure(_):
                onError("Error in API")
            }
        }
    }
}

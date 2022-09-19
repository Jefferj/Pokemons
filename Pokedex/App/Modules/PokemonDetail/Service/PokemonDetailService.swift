//
//  PokemonDetail.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 19/09/22.
//

import Foundation

class PokemonDetailService {
    
    func getPokemon(urlPokemon: String,
                    onComplete: @escaping (PokemonDetailDTO) -> Void,
                     onError: @escaping (String) -> Void) {
        
        ApiManager.shared.getCall(url: urlPokemon) { response in
            
            switch response {
            case .success(let data):
                do {
                    if let data = data {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        let result = try decoder.decode(PokemonDetailDTO.self, from: data)
                        onComplete(result)
                    }
                } catch {
                    onError("no se pudo procesar el json")
                }
            case .failure(_):
                onError("error en la api")
            }
        }
        
    }
    
}

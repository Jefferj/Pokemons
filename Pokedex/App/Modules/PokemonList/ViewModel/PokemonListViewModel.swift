//
//  PokemonListViewModel.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 7/09/22.
//

import Foundation

class PokemonListViewModel {
    
    private var service : PokemonListService
    var pokemons = [PokemonDTO]()
    
    init(service: PokemonListService) {
        self.service = service
    }
    
    func getPokemons(onComplete: @escaping () -> Void) {
        service.getPokemons { results in
            self.pokemons = results
            onComplete()
        } onError: { error in
            print(error)
        }

    }
}

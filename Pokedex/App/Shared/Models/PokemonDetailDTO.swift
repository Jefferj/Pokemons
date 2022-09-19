//
//  PokemonDetailDTO.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 19/09/22.
//


import Foundation

struct PokemonDetailDTO: Codable {
    let id: Int
    let name: String
    let sprites: SpriteDTO
}

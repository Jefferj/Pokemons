//
//  PokemonSpriteDTO.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 19/09/22.
//

import Foundation

struct SpriteDTO: Codable {
    let other: SpriteOther?
}

struct SpriteOther: Codable {
    let home: SpriteHome?
}

struct SpriteHome: Codable {
    let frontDefault: String?
}

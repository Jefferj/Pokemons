//
//  UserDefaults+Extension.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 19/09/22.
//

import Foundation

extension UserDefaults {
    var isUserLoggedIn: Bool {
        get { self.bool(forKey: #function) }
        set { self.setValue(newValue, forKey: #function) }
    }
}

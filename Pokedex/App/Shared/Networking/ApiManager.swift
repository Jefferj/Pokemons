//
//  ApiManager.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 6/09/22.
//

import Alamofire

class ApiManager {
    static let shared = ApiManager()
    
    // GET HTTP
    func getCall(url: String, success: @escaping (Result<Data?, AFError>) -> Void ) {
        AF.request(url).response { response in
            success(response.result)
        }
    }
}

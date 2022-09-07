//
//  SceneDelegate.swift
//  Pokedex
//
//  Created by Jefferson Naranjo rodríguez on 29/08/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowsScene = (scene as? UIWindowScene) else { return }
        let mainViewController = PokemonListViewController()
        let navigationController = UINavigationController(rootViewController: mainViewController)
        window = UIWindow(windowScene: windowsScene)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    

}


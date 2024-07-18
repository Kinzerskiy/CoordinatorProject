//
//  SceneDelegate.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var appCoordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let appCoordinator = AppCoordinator(window: window)
            appCoordinator.start()
            
            self.appCoordinator = appCoordinator
            window.makeKeyAndVisible()
        }
    }
}


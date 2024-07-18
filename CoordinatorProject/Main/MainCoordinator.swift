//
//  MainCoordinator.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import Foundation
import SwiftUI

class MainCoordinator: Coordinator {
    var rootViewController: UITabBarController
    
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .lightGray
    }
    
    func start() {
        
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinators.append(firstCoordinator)
        let firstVC = firstCoordinator.rootViewController
        setup(vc: firstVC, title: "FirstTab", imageName: "paperplane", selectedImage: "paperplane.fill")
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinators.append(secondCoordinator)
        let secondVC = secondCoordinator.rootViewController
        setup(vc: secondVC, title: "SecondTab", imageName: "bell", selectedImage: "bell.fill")
        
        self.rootViewController.viewControllers = [firstVC, secondVC]
        
    }
    
    
    func setup(vc: UIViewController, title: String, imageName: String, selectedImage: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImage = UIImage(systemName: selectedImage)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        
        vc.tabBarItem = tabBarItem
    }
}

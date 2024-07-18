//
//  SecondTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import UIKit

class SecondTabCoordinator: Coordinator {
    var rootViewController = UINavigationController()
    
    lazy var secondViewController: SecondViewController =  {
        let vc = SecondViewController()
        vc.title = "Second"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondViewController], animated: false)
    }
}

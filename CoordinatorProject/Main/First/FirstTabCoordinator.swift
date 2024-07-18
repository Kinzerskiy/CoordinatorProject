//
//  FirstTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import UIKit
import SwiftUI

class FirstTabCoordinator: NSObject, Coordinator {
    var rootViewController: UINavigationController
    
    let viewModel = FirstTabViewModel()
    
    override init() {
        
        self.rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        super.init()
        
        rootViewController.delegate = self
    }
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.viewModel = viewModel
        vc.showDetailRequested = { [weak self] in
            self?.goToDetail()
        }
        vc.title = "First title"
        return vc
    }()
    
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
    
    func goToDetail() {
        let detailVC = UIHostingController(rootView: FirstDetailView(viewModel: viewModel))
        rootViewController.pushViewController(detailVC, animated: true)
    }
}


extension FirstTabCoordinator: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if viewController as? UIHostingController<FirstDetailView> != nil {
            print("FirstDetailView will be shown")
        } else  if viewController as? FirstViewController != nil {
            print("FirstViewController will be shown")
        }
    }
}

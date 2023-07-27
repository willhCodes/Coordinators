//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by willhcodes on 7/26/23.
//

import Foundation
import UIKit

 class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
     func start() {
        let view = ViewController.instantiate(for: "Main")

        view.coordinator = MainCoordinator(navigationController: navigationController)
        
        navigationController.pushViewController(view, animated: false)
        
      }
    
     func buySubscription() {
        let vc = BuyViewController.instantiate(for: "Main")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
     func createAccount() {
        let vc = CreateAccountViewController.instantiate(for: "Main")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}

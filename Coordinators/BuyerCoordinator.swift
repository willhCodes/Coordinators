//
//  BuyerCoordinator.swift
//  Coordinators
//
//  Created by jdh on 7/27/23.
//

import UIKit

class BuyCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = BuyViewController.instantiate(for: "Main")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(self)
//    }
    
}

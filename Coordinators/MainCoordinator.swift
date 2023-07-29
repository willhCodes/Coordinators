//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by willhcodes on 7/26/23.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        navigationController.delegate = self

        
        let view = ViewController.instantiate(for: "Main")
        
        view.coordinator = MainCoordinator(navigationController: navigationController)
        
        navigationController.pushViewController(view, animated: false)
        
    }
    
    func buySubscription() {
        

        let child = BuyCoordinator(navigationController: navigationController)
        
        child.parentCoordinator = self 
        
        childCoordinators.append(child)
        
        child.start()
        
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate(for: "Main")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in
                childCoordinators.enumerated() {
            if coordinator === child {
                print (childCoordinators)
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        print ("didshow")
        
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {return}
        
        if navigationController.viewControllers.contains(fromViewController) { return}
        
        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.coordinator)
        }
    }
    

    
    
}

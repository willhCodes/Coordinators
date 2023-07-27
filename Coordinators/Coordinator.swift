//
//  Coordinator.swift
//  Coordinators
//
//  Created by willhcodes on 7/26/23.
//

import Foundation
import UIKit

 protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

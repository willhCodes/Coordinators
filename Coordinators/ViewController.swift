//
//  ViewController.swift
//  Coordinators
//
//  Created by jdh on 7/26/23.
//

import UIKit

 class ViewController: UIViewController, Storyboarded {
     
     
     var coordinator: MainCoordinator?
    
//     var coordinator: (Buying & ACcountCreating)?
     
     var buySubscription: (() -> Void)?
     var createAccount: (() -> Void)?

    @IBAction func buyTapped(_ sender: Any) {
        buySubscription?()
    }
    @IBAction func createAccountTapped(_ sender: Any) {
        createAccount?()

    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        print ("viewdidload")
        // Do any additional setup after loading the view.
    }


}


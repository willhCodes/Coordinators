//
//  ViewController.swift
//  Coordinators
//
//  Created by jdh on 7/26/23.
//

import UIKit

 class ViewController: UIViewController, Storyboarded {
    
     var coordinator: MainCoordinator?
    
     @IBOutlet weak var product: UISegmentedControl!
     
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription(to: product.selectedSegmentIndex)
        print (product.selectedSegmentIndex)
    }
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()

    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        print ("viewdidload")
        // Do any additional setup after loading the view.
    }


}


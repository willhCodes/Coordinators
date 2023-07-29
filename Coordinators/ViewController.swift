//
//  ViewController.swift
//  Coordinators
//
//  Created by jdh on 7/26/23.
//

import UIKit

 class ViewController: UIViewController, Storyboarded {
     
     
    
     var coordinator: (Buying & ACcountCreating)?
    

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
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


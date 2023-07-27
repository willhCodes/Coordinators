//
//  Storyboarded.swift
//  Coordinators
//
//  Created by willhcodes on 7/26/23.
//


import UIKit

public protocol Storyboarded {
    static func instantiate(for name: String) -> Self
}

public extension Storyboarded where Self: UIViewController {
    
    static func instantiate(for name: String) -> Self {
        let id = String(describing: self)
        print (id)
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

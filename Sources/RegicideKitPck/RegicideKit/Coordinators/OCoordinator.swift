//
//  OMainCoordinator.swift
//  RegicideKit
//
//  Created by Luis Gerardo Luna Pena on 9/18/19.
//  Copyright © 2019 Luis Gerardo Luna Pena. All rights reserved.
//

import Foundation
import UIKit

public enum OCoordinatorError: Error {
    case nonExistingViewController(String)
    
}

public protocol OCoordinator {
    var id: String { get }
    var storyboardName: String { get }
    var bundle: Bundle { get }
}

public extension OCoordinator where Self: UIViewController {
    func instantiate() -> Self? {
        let storyBoard = UIStoryboard(name: storyboardName, bundle: bundle)
        return storyBoard.instantiateViewController(withIdentifier: id) as? Self
        
    }
}




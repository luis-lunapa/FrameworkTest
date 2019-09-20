//
//  OLoginCoordinator.swift
//  RegicideKit
//
//  Created by Luis Gerardo Luna Pena on 9/19/19.
//  Copyright © 2019 Luis Gerardo Luna Pena. All rights reserved.
//

import Foundation
public protocol OLoginCoordinator: OCoordinator {
    func goToDemo() ///Pass data between controllers
    func goToMain()
    func goToTutorial()
}

public protocol ODemoCoordinator: OCoordinator {
    func goToLogin() ///Pass data between controllers
    func goToTutorial()
}

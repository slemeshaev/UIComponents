//
//  NavigationRouter.swift
//  Weather
//
//  Created by Stanislav Lemeshaev on 09.05.2023.
//  Copyright © 2023 slemeshaev. All rights reserved.
//

import UIKit

class NavigationRouter {
    // MARK: - Init
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Properties
    let navigationController: UINavigationController
    
    // MARK: - Interface
    func start() {
        let mainViewController = MainViewController.loadFromStoryboard()
        navigationController.pushViewController(mainViewController, animated: false)
    }
}

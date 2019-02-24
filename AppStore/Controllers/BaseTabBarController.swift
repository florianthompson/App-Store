//
//  BaseTabBarController.swift
//  AppStore
//
//  Created by Florian Thompson on 2/24/19.
//  Copyright © 2019 Florianthompson. All rights reserved.
//

import UIKit

class BaseTapBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search"),
            createNavController(title: "Today", imageName: "today_icon"),
            createNavController(title: "Apps", imageName: "apps")
        ]
    }

    fileprivate func createNavController(viewController: UIViewController = UIViewController(), title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.image = UIImage(named: imageName)
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        return navController
    }
}

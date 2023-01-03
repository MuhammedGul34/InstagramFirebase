//
//  MainTabbarController.swift
//  InstagramFirebase
//
//  Created by Muhammed Gül on 30.12.2022.
//

import UIKit

class MainTabbarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let layout = UICollectionViewLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        
        let navController = UINavigationController(rootViewController: userProfileController)
        navController.tabBarItem.image = UIImage(named: "profile_unselected")
        navController.tabBarItem.selectedImage = UIImage(named: "profile_selected")
        
        tabBar.tintColor = .black
        tabBar.backgroundColor = .systemGray6
        viewControllers = [navController, UIViewController()]
    }
}

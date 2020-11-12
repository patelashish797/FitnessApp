//
//  NavigationVC.swift
//  FitnessApp
//
//  Created by Ashish Patel on 11/11/20.
//

import UIKit

class NavigationVC: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setNeedsStatusBarAppearanceUpdate()
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.lightGray,
                                                            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 25)]
        UINavigationBar.appearance().isTranslucent = false
    }
}

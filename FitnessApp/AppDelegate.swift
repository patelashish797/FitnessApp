//
//  AppDelegate.swift
//  FitnessApp
//
//  Created by Ashish Patel on 11/10/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)

        let workOutVC  = WorkOutVC()
        window?.rootViewController = NavigationVC(rootViewController: workOutVC)
        window?.makeKeyAndVisible()
        return true
    }
    

}


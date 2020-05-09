//
//  AppDelegate.swift
//  SideMenu
//
//  Created by Eslam on 5/8/20.
//  Copyright © 2020 Eslam. All rights reserved.
//

import UIKit
import AKSideMenu
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        var window: UIWindow?

        // Override point for customization after application launch.
          window = UIWindow.init(frame: UIScreen.main.bounds)

         // Create content and menu controllers
           let navigationController: UINavigationController = UINavigationController.init(rootViewController: FirstVC.init())
           let leftMenuViewController: FirstVC = FirstVC.init()
           let rightMenuViewController: SecondVC = SecondVC.init()

           // Create side menu controller
           let sideMenuViewController: AKSideMenu = AKSideMenu(contentViewController: navigationController, leftMenuViewController: leftMenuViewController, rightMenuViewController: rightMenuViewController)

           // Make it a root controller
           window!.rootViewController = sideMenuViewController

           window!.backgroundColor = UIColor.white
           window?.makeKeyAndVisible()
           return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


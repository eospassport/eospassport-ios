//
//  AppDelegate.swift
//  EOSPassport
//
//  Created by Vitaly Berg on 23/09/2018.
//  Copyright © 2018 Vitaly Berg. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    // MARK: - UIApplicationDelegate
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //window?.rootViewController = MainViewController()
        window?.rootViewController = UINavigationController(rootViewController: EnterViewController())
        //window?.rootViewController = UINavigationController(rootViewController: PassportViewController())
        //window?.rootViewController = UINavigationController(rootViewController: GrantViewController())
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let grantVC = GrantViewController()
        let grantNC = UINavigationController(rootViewController: grantVC)
        window?.rootViewController?.present(grantNC, animated: false)
        return true
    }
}

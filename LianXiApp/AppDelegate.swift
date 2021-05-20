//
//  AppDelegate.swift
//  LianXiApp
//
//  Created by 纵昂 on 2021/5/20.
//  Swift | iOS开发之Swift入门-AppDelegate
//  https://www.jianshu.com/p/758c98dc26dc
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
//    var viewController: UIViewController?
    var viewController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//                self.window = UIWindow.init(frame: UIScreen.main.bounds)
//                self.window?.backgroundColor = .white
//                let vc = ViewController()
//                self.viewController = vc
//                self.window?.rootViewController = self.viewController
//                self.window?.makeKeyAndVisible()
        
               self.window = UIWindow.init(frame: UIScreen.main.bounds)
                let vc = ViewController()
                self.viewController = UINavigationController.init(rootViewController: vc)
                self.window?.rootViewController = self.viewController
                self.window?.makeKeyAndVisible()
 
        return true
    }


}


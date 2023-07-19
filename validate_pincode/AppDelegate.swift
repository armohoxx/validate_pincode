//
//  AppDelegate.swift
//  validate_pincode
//
//  Created by Phattarapon Jungtakarn on 19/7/2566 BE.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var restrictRotation: UIInterfaceOrientationMask = .portrait
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if #available(iOS 13.0, *) {
            // no-op - UI created in scene delegate
        } else {
            self.window? = UIWindow.init(frame: UIScreen.main.bounds)
            self.window?.rootViewController = assignedViewController()
            self.window?.makeKeyAndVisible()
        }
        self.customizeNavBar()
        
        return true
    }
    
    func assignedViewController() -> UIViewController {
        return MainRouter.createModule()
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
    
    //MARK: Lock rotation screen
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.restrictRotation
    }
    
}

extension AppDelegate {
    
    func customizeNavBar() {
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().standardAppearance = appearance;
            UINavigationBar.appearance().scrollEdgeAppearance = UINavigationBar.appearance().standardAppearance
            UINavigationBar.appearance().isTranslucent = true
            UINavigationBar.appearance().tintColor = UIColor.black
            UINavigationBar.appearance().barTintColor = UIColor.black
            UINavigationBar.appearance().barStyle = UIBarStyle.black
            appearance.backgroundColor = UIColor.white
            appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        } else {
            UINavigationBar.appearance().isTranslucent = true
            UINavigationBar.appearance().barStyle = UIBarStyle.black
            UINavigationBar.appearance().tintColor = UIColor.black
            UINavigationBar.appearance().barTintColor = UIColor.black
            UINavigationBar.appearance().backgroundColor = UIColor.white
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
        }
    }
    
}


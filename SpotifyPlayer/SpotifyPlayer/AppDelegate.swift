//
//  AppDelegate.swift
//  SpotifyPlayer
//
//  Created by Dwarakanatha Reddy Poreddy on 28/12/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let navigatorController = UINavigationController(rootViewController: CHCRImage())
        window?.rootViewController = navigatorController
        window?.backgroundColor = .white
        
        return true
    }
}


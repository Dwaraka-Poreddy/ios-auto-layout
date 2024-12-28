//
//  AppDelegate.swift
//  SpotifyConfigurationScreen
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
        window?.backgroundColor = .black
        
        let navigatorController = UINavigationController(rootViewController: Challenge())
        window?.rootViewController = navigatorController
        
        // Customize UINavigationBarAppearance
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .offBlack // Set the navbar color
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        // Apply appearance to navigation bar
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        
        return true
    }
}


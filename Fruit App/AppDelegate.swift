//
//  AppDelegate.swift
//  Fruit App
//
//  Created by Jonathan Wesfield on 12/07/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
    
    // redirect user to desired UIViewController
    func walkToViewWithParams(fruitName: String) {
        let destinationViewController = FruitViewController()
        
        switch fruitName {
        case "apples":
            destinationViewController.fruit = .apple
        case "peaches":
            destinationViewController.fruit = .peaches
        case "bananas":
            destinationViewController.fruit = .banana
        default:
            fatalError()
        }
        
        if let windowScene = UIApplication.shared.connectedScenes
            .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController?.present(destinationViewController, animated: true)
        }
    }
}



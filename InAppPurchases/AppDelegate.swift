//
//  AppDelegate.swift
//  InAppPurchases
//
//  Created by Zulwiyoza Putra on 05/06/21.
//

import UIKit
import StoreKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Attach an observer to the payment queue.
        SKPaymentQueue.default().add(StoreObserver.shared)
        
        return true
    }


    func applicationWillTerminate(_ application: UIApplication) {
        // Remove the observer.
        SKPaymentQueue.default().remove(StoreObserver.shared)
    }
}


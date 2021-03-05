//
//  AppDelegate.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 2/26/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit
import Firebase


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        return true
    }

}



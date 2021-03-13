//
//  AppDelegate.swift
//  MyExporter
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 Burri IT Solutions. All rights reserved.
//

import UIKit
import MyMessageExporter

private enum AppData: String {
    
    case appName = "MyExporter"
    case appUniqueId = "UniqueID"
    case firebaseId = "FirbaseUniqueID"
    case graphQLServerPath = "UniquePath"
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        initiaizeMessageExporter()
        return true
    }
}

// MARK: - Privates
extension AppDelegate {
    
    private func initiaizeMessageExporter() {
        var types: [ServerType] = []
        
        types.append(.firebase(appName: AppData.appName.rawValue, appId: AppData.appUniqueId.rawValue, firebasePath: AppData.firebaseId.rawValue))
        
        types.append(.graphQL(appName: AppData.appName.rawValue, appId: AppData.appUniqueId.rawValue, configPath: AppData.graphQLServerPath.rawValue))
        
        if !types.isEmpty {
            ManagerInjector.exportManager = MessageExportManager(types: types)
        }
    }
}


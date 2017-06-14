//
//  AppDelegate.swift
//  swiftLearningDemo
//
//  Created by gong on 2017/6/1.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var root_navigationController: UINavigationController?
    var root_tabBarController: UITabBarController?
    
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let versionString = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        var oldVersionString = UserDefaults.standard.object(forKey: "oldVersion") as? String
        oldVersionString = "1.0.0"
        
        if versionString == oldVersionString {
            
            print("非新版本")
            makeRootViewController()
            
        }else{
            
            let rootVC:IntroViewController = IntroViewController()
            window = UIWindow.init(frame: UIScreen.main.bounds)
            window?.rootViewController = rootVC
            window?.makeKeyAndVisible()
            print("新版本")
        }
        return true
    }
    
//    func makeRootViewController(){
//        
//        
//        let vc1 = ViewController()
////        let vc1 = UINavigationController.init(rootViewController: vc0)
////        vc1.navigationBar.barStyle = .black
//        vc1.title = "微信"
//        vc1.tabBarItem = UITabBarItem.init(title: "微信", image: UIImage.init(named: "tabbar_mainframe"), selectedImage: UIImage.init(named: "tabbar_mainframeHL"))
//        
//        
//        let vc2 = ViewController()
//        vc2.title = "通讯录"
//        vc2.tabBarItem = UITabBarItem.init(title: "通讯录", image: UIImage.init(named: "tabbar_contacts"), selectedImage: UIImage.init(named: "tabbar_contactsHL"))
//        
//        
//        let vc3 = ViewController()
//        vc3.title = "发现"
//        vc3.tabBarItem = UITabBarItem.init(title: "发现", image: UIImage.init(named: "tabbar_discover"), selectedImage: UIImage.init(named: "tabbar_discoverHL"))
//        
//        
//        let vc4 = ViewController()
//        vc4.title = "我"
//        vc4.tabBarItem = UITabBarItem.init(title: "我", image: UIImage.init(named: "tabbar_me"), selectedImage: UIImage.init(named: "tabbar_meHL"))
//        
//        root_tabBarController = UITabBarController.init()
////        root_tabBarController?.title = "微信"
////        root_tabBarController?.tabBar.tintColor = UIColor.init(red: 26/255.0, green: 178/255.0, blue: 10/255.0, alpha: 1)
//        root_tabBarController?.viewControllers = [UINavigationController.init(rootViewController: vc1),
//                                                  UINavigationController.init(rootViewController: vc2),
//                                                  UINavigationController.init(rootViewController: vc3),
//                                                  UINavigationController.init(rootViewController: vc4)]
//        
////        root_navigationController = UINavigationController.init(rootViewController: root_tabBarController!)
////        root_navigationController?.navigationBar.tintColor = UIColor.init(red: 26/255.0, green: 178/255.0, blue: 10/255.0, alpha: 1)
//        
//        
//        window = UIWindow.init(frame: UIScreen.main.bounds)
//        window?.rootViewController = root_tabBarController
//        window?.makeKeyAndVisible()
//    }
    
    func makeRootViewController(){
        
        
        let vc0 = ViewController()
        vc0.title = "abc"
        let vc1 = UINavigationController.init(rootViewController: vc0)
        vc1.navigationBar.barStyle = .black
        vc1.title = "微信"
        vc1.tabBarItem = UITabBarItem.init(title: "微信", image: UIImage.init(named: "tabbar_mainframe"), selectedImage: UIImage.init(named: "tabbar_mainframeHL"))

        
        let vc2 = ViewController()
        
        vc2.title = "通讯录"
        vc2.tabBarItem = UITabBarItem.init(title: "通讯录", image: UIImage.init(named: "tabbar_contacts"), selectedImage: UIImage.init(named: "tabbar_contactsHL"))

        
        let vc3 = ViewController()
        vc3.title = "发现"
        vc3.tabBarItem = UITabBarItem.init(title: "发现", image: UIImage.init(named: "tabbar_discover"), selectedImage: UIImage.init(named: "tabbar_discoverHL"))

        
        let vc4 = ViewController()
        vc4.title = "我"
        vc4.tabBarItem = UITabBarItem.init(title: "我", image: UIImage.init(named: "tabbar_me"), selectedImage: UIImage.init(named: "tabbar_meHL"))
        
        root_tabBarController = UITabBarController.init()
        root_tabBarController?.viewControllers = [vc1,vc2,vc3,vc4]
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = root_tabBarController
        window?.makeKeyAndVisible()
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


//
//  AppDelegate.swift
//  EcoApplication
//
//  Created by Никита Ткаченко on 01.11.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Создаем главный window так как удалили MAIN
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // Базовые контроллеры
        let mapVC = MapViewController()
        let newsVC = NewsViewController()
        let guideVC = GuideViewController()
        
        
        // Настройка контроллеров из таббара
        mapVC.tabBarItem = UITabBarItem(title: "Map", image: UIImage(named: "map"), selectedImage: nil)
        newsVC.tabBarItem = UITabBarItem(title:"News", image: UIImage(named: "newspaper"), selectedImage: nil)
        let navigationController = UINavigationController(rootViewController: guideVC)
        navigationController.tabBarItem = UITabBarItem(title: "Guides", image: UIImage(named: "trashcan"), selectedImage: nil)
        
        
        let tabBarController = UITabBarController()
        // Видимые контроллеры таббара
        tabBarController.viewControllers = [mapVC,newsVC,navigationController]
        // Чтобы знать откуда запускаться
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }

   


}


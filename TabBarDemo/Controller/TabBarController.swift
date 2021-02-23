//
//  TabBarController.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
    }
    
    func setupViewControllers(){
       
        let northAmerica = Continent(name: "N.America", imageName: "northAmerica", associatedColor: .cyan)
        let southAmerica = Continent(name: "S.America", imageName: "southAmerica", associatedColor: .cyan)
        let europe = Continent(name: "Europe", imageName: "europe", associatedColor: .cyan)
        let africa = Continent(name: "Africa", imageName: "africa", associatedColor: .cyan)
        let asia = Continent(name: "Asia", imageName: "asia", associatedColor: .cyan)
        
        let continents = [northAmerica, southAmerica, europe, africa, asia]
        
        var navControllers = [UINavigationController]()
        
        for continent in continents{
            let vc = ContinentVC()
            let navController = UINavigationController(rootViewController : vc)
            vc.currentContinent = continent
            vc.tabBarItem = UITabBarItem(title: vc.currentContinent.name, image: UIImage(systemName: "staroflife"), selectedImage: UIImage(systemName: "staroflife.fill"))
            navControllers.append(navController)
        }
        
        self.tabBar.barTintColor = UIColor.black
        self.tabBar.tintColor = UIColor.white
        
        viewControllers = navControllers

        
    }
}

//
//  MenuTabBarController.swift
//  369MemoryAlarm
//
//  Created by minsong kim on 11/2/23.
//

import UIKit

class MenuTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = .black
        tabBar.unselectedItemTintColor = .black
        
        setUpViewControllers()
    }
    
    func setUpViewControllers() {
        let presentViewController = PresentListViewController()
        let doneViewController = DoneListViewController()
        
        presentViewController.tabBarItem.title = "진행 중"
        doneViewController.tabBarItem.title = "완료"
        
        presentViewController.tabBarItem.image = UIImage(systemName: "play.circle")
        doneViewController.tabBarItem.image = UIImage(systemName: "list.bullet.circle.fill")
        
        viewControllers = [presentViewController, doneViewController]
    }
}

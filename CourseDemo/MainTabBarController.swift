//
//  ViewController.swift
//  CourseDemo
//
//  Created by mert Kanak on 21.12.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: FilesViewController())
        let vc2 = UINavigationController(rootViewController: ClassViewController())
        let vc3 = UINavigationController(rootViewController: HomeworksViewController())
        let vc4 = UINavigationController(rootViewController: VideosViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "folder")
        vc2.tabBarItem.image = UIImage(systemName: "studentdesk")
        vc3.tabBarItem.image = UIImage(systemName: "list.bullet.rectangle.portrait.fill")
        vc4.tabBarItem.image = UIImage(systemName: "video")
        
        
        vc1.title = "Files"
        vc2.title = "Classes"
        vc3.title = "Homeworks"
        vc4.title = "Videos"
        
        tabBar.tintColor = .link
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        
        
        
    }
    
     


}


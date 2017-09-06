//
//  TapBarViewController.swift
//  WidgetTest
//
//  Created by yuki.pro on 2017. 9. 6..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

class TapBarViewController: UITabBarController {

    var window: UIWindow?

    var userDefaults = UserDefaults(suiteName: "group.com.hi-yuki.WidgetTest")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //let tabBarController = self.window?.rootViewController as! UITabBarController
        
        
    }

    
//    override func viewWillAppear(_ animated: Bool) {
//        
//        NotificationCenter.default.addObserver(
//            self,
//            selector: #selector(type(of: self).handleNoti2(noti:)),
//            name: .UIApplicationWillEnterForeground,
//            object: nil)
//        
//        
//        
//    }
//    
//    
//    func handleNoti2(noti: Notification) {
//        if userDefaults?.value(forKey: "widgetKeywords") != nil {
//            window = UIWindow(frame: UIScreen.main.bounds)
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//            let initialVC = sb.instantiateViewController(withIdentifier: "StartView")
//            window?.rootViewController = initialVC
//            tabBarController?.selectedIndex = 0
//            window?.makeKeyAndVisible()
//            //let tabBarController = self.window?.rootViewController as! UITabBarController
//            
//            print("탭바")
//        }
//    }

}

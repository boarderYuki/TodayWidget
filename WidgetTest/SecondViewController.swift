//
//  SecondViewController.swift
//  WidgetTest
//
//  Created by yuki.pro on 2017. 9. 6..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var userDefaults = UserDefaults(suiteName: "group.com.hi-yuki.WidgetTest")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(type(of: self).handleNoti(noti:)),
            name: .UIApplicationWillEnterForeground,
            object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }

    
    func handleNoti(noti: Notification) {
        if userDefaults?.value(forKey: "widgetKeywords") != nil {
            tabBarController?.selectedIndex = 0
        }
    }

}

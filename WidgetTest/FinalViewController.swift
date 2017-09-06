//
//  FinalViewController.swift
//  WidgetTest
//
//  Created by yuki.pro on 2017. 9. 6..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var firstWidgetLabel: UILabel!
    @IBOutlet weak var secondWidgetLabel: UILabel!
    @IBOutlet weak var thirdWidgetLabel: UILabel!
    
    var userDefaults = UserDefaults(suiteName: "group.com.hi-yuki.WidgetTest")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        userDefaults?.synchronize()
        if let t : [String] = userDefaults?.value(forKey: "widgetKeywords") as? [String] {
            
            firstWidgetLabel.text = t[0]
            secondWidgetLabel.text = t[1]
            thirdWidgetLabel.text = t[2]
        } else {
            firstWidgetLabel.text = "--"
            secondWidgetLabel.text = "--"
            thirdWidgetLabel.text = "--"
            
        }
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(type(of: self).handleNoti(noti:)),
            name: .UIApplicationWillEnterForeground,
            object: nil)
        
    }
    
    
    func handleNoti(noti: Notification) {
        if let t : [String] = userDefaults?.value(forKey: "widgetKeywords") as? [String] {
            
            firstWidgetLabel.text = t[0]
            secondWidgetLabel.text = t[1]
            thirdWidgetLabel.text = t[2]
        }
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        userDefaults?.removeObject(forKey: "widgetKeywords")
        NotificationCenter.default.removeObserver(self)
    }

    
    

}

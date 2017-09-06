//
//  ViewController.swift
//  WidgetTest
//
//  Created by yuki.pro on 2017. 9. 5..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit
import randomWordKit

class ViewController: HomeViewController {

    @IBOutlet weak var firstWidgetLabel: UILabel!
    @IBOutlet weak var secondWidgetLabel: UILabel!
    @IBOutlet weak var thirdWidgetLabel: UILabel!
    
    @IBOutlet weak var userDefaultTextField: UITextField!
    
    var userDefaults = UserDefaults(suiteName: "group.com.hi-yuki.WidgetTest")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomNumberFirst()
        getRandomNumberSecond()
        getRandomNumberThird()
        
    }
   
    
    override func viewWillAppear(_ animated: Bool) {

        if userDefaults?.value(forKey: "widgetKeywords") != nil {
            performSegue(withIdentifier: "finalViewSegue", sender: nil)
        }
        
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
            performSegue(withIdentifier: "finalViewSegue", sender: nil)
        }
    }



    @IBAction func userDefaultSave(_ sender: Any) {
        let userKey = userDefaultTextField.text
        userDefaults?.setValue(userKey, forKey: "userKey")
        userDefaultTextField.resignFirstResponder()
    }



}


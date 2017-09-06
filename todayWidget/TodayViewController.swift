//
//  TodayViewController.swift
//  todayWidget
//
//  Created by yuki.pro on 2017. 9. 6..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit
import NotificationCenter
import randomWordKit

class TodayViewController: HomeViewController, NCWidgetProviding {

    
    @IBOutlet weak var reloadButton: UIButton!
    @IBOutlet weak var goToAppButton: UIButton!
    
    @IBOutlet weak var userKeyLabel: UILabel!
    var userDefaults = UserDefaults(suiteName: "group.com.hi-yuki.WidgetTest")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reloadButton.alpha = 0
        goToAppButton.alpha = 0
        
        extensionContext?.widgetLargestAvailableDisplayMode = .expanded

    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        getRandomNumberFirst()
        getRandomNumberSecond()
        getRandomNumberThird()
        
        
        
        if let userKey = userDefaults?.value(forKey: "userKey") {
            userKeyLabel.text = "userKey : \(userKey as! String)"
        }
    }
    
    @IBAction func reloadWord(_ sender: Any) {
        getRandomNumberFirst()
        getRandomNumberSecond()
        getRandomNumberThird()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func goToApp(_ sender: Any) {
        
        
        let fw = firstWordLabel.text!
        let sw = secondWordLabel.text!
        let tw = thirdWordLabel.text!
        
        let widgetKeywords = [fw, sw, tw]
        
        userDefaults?.setValue(widgetKeywords, forKey: "widgetKeywords")
        //userDefaults?.synchronize()
        
        let url:URL = NSURL.fileURL(withPath: "WidgetTest://recent")
        extensionContext?.open(url, completionHandler: nil)
    }
    
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        let expanded = activeDisplayMode == .expanded
        preferredContentSize = expanded ? CGSize(width: maxSize.width, height: 170) : maxSize
        toggleButton()
    }
    
    private func toggleButton() {
        let expanded = extensionContext!.widgetActiveDisplayMode == .expanded
        if expanded {
            reloadButton.alpha = 1
            goToAppButton.alpha = 1
        } else {
            reloadButton.alpha = 0
            goToAppButton.alpha = 0
        }
    }
    

}

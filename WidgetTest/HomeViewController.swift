//
//  HomeViewController.swift
//  WidgetTest
//
//  Created by yuki.pro on 2017. 9. 5..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

open class HomeViewController: UIViewController {

    
    @IBOutlet open var firstWordLabel: UILabel!
    @IBOutlet open var secondWordLabel: UILabel!
    @IBOutlet open var thirdWordLabel: UILabel!
    
    
    public var randomNoFirst = 0
    var randomNoSecond = 0
    var randomNoThird = 0
    

    open let firstWordList = ["1", "2", "3", "4", "5", "6", "7", "8"]
    let secondWordList = ["1", "2", "3", "4", "5", "6", "7", "8"]
    let thirdWordList = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    override open func viewDidLoad() {
        super.viewDidLoad()

    }


    // 첫번째 키워드 랜덤 가져오기
    open func getRandomNumberFirst() {
        randomNoFirst = Int(arc4random_uniform(UInt32(firstWordList.count)))
        firstWordLabel.text = "첫번째 키워드 \(firstWordList[randomNoFirst])"
        
    }
    
    // 두번째 키워드 랜덤 가져오기
    open func getRandomNumberSecond() {
        randomNoSecond = Int(arc4random_uniform(UInt32(secondWordList.count)))
        secondWordLabel.text = "두번째 키워드 \(secondWordList[randomNoSecond])"
        
    }
    
    // 세번째 키워드 랜덤 가져오기
    open func getRandomNumberThird() {
        randomNoThird = Int(arc4random_uniform(UInt32(thirdWordList.count)))
        thirdWordLabel.text = "세번째 키워드 \(thirdWordList[randomNoThird])"
        

    }

}

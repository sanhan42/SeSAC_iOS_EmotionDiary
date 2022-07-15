//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 한상민 on 2022/07/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var emotionLabelList: [UILabel]!
    @IBOutlet var emotionButtonList: [UIButton]!
    var emotionName = ["행복해 ","사랑해 ", "좋아해 ", "당황해 ", "속상해 ","우울해 ","심심해 ","피곤해 ", "걱정해 "]
//    var emotionNum:[Int] = [0,0,0,0,0,0,0,0,0]

    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...8 {
            emotionButtonList[i].tag = i
        }
        for (i,label) in emotionLabelList.enumerated() {
            label.text = emotionName[i] + "\(UserDefaults.standard.integer(forKey: "\(i)"))"
        }
    }
   
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        var emotionNum = UserDefaults.standard.integer(forKey: "\(sender.tag)")
        emotionNum += 1
        UserDefaults.standard.set(emotionNum, forKey: "\(sender.tag)")
        emotionLabelList[sender.tag].text = emotionName[sender.tag] + "\(emotionNum)"
    }
}


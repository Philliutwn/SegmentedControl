//
//  ViewController.swift
//  SegmentedControl
//
//  Created by 劉鴻祥 on 2018/7/29.
//  Copyright © 2018年 劉鴻祥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var starSegmentedControl: UISegmentedControl!
    @IBOutlet weak var starDescriptionSwitch: UISwitch!
    @IBOutlet weak var starDesiptionTextView: UITextView!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var starDescriptionTextView: UITextView!
    
    func showDescription() {
        switch starSegmentedControl.selectedSegmentIndex {
        case 0:
            starImageView.image = UIImage(named: "巨蟹座")
            if starDescriptionSwitch.isOn {
                starDescriptionTextView.isHidden = false
                starDescriptionTextView.text = "溫柔細膩的巨蟹女，有著很強的母性光環，會站到不同的角度來思考同一件事情，會為他人換位思考，很會照顧人。賢妻良母，這樣的姑娘大概是所有男生心中的硃砂痣，也是最難以忘懷，很成熟，能夠得到很多的喜歡，很容易成為男生心中的夢中情人。"
                    //原文網址：https://kknews.cc/zh-tw/astrology/b693omo.html"
            } else {
                starDescriptionTextView.isHidden = true
            }
        
        case 1:
            starImageView.image = UIImage(named:"雙魚座")
            if starDescriptionSwitch.isOn {
                starDescriptionTextView.isHidden = false
                starDescriptionTextView.text = "溫柔、愛撒嬌的雙魚女，會很容易的激發起男生的保護欲，感情細膩，是男生心靈的港灣，備受異性的偏愛。親切可人，這樣的姑娘大概是沒有男生會拒絕的吧，會在無形中把疲憊的感覺稀釋掉一大半，有著很輕鬆的生活，是很容易成為男生心中的夢中情人。"
                    //原文網址：https://kknews.cc/zh-tw/astrology/b693omo.html"
            } else {
                starDescriptionTextView.isHidden = true
            }

        case 2:
            starImageView.image = UIImage(named:"雙子座")
            if starDescriptionSwitch.isOn {
                starDescriptionTextView.isHidden = false
                starDescriptionTextView.text = "內心有著很美好幻想、高境界的雙子女，會很容易讓男生產生一種惺惺相惜的感覺，是不得多得的幫手。聰明伶俐，這樣的姑娘大概是男生心中不可缺失的一道光芒，會想要讓這道光芒一直在心裡，是心裡的白月光，深深的迷戀上具有魅力的雙子女。"
                    //原文網址：https://kknews.cc/zh-tw/astrology/b693omo.html"
            } else {
                starDesiptionTextView.isHidden = true
            }
        default:
            print ("switch on default condition")
            
        }
        
    }
    
    
    @IBAction func starDescriptionSwitch(_ sender: UISwitch) {
        
        showDescription()
    }
    
    @IBAction func starSegmentedControlChanged(_ sender: UISegmentedControl) {
        
        showDescription()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}


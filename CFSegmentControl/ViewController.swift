//
//  ViewController.swift
//  CFSegmentContrl
//
//  Created by 冯成林 on 15/6/24.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var control1: CFSegmentControl?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var control1 = CFSegmentControl(itemsClosure: { () -> NSArray in
            
            var btn1 = UIButton()
            btn1.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
            btn1.setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
            btn1.setTitle("按钮一", forState: UIControlState.Normal)
            
            var btn2 = UIButton()
            btn2.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
            btn2.setTitle("按钮二", forState: UIControlState.Normal)
            btn2.setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
            
            var btn3 = UIButton()
            btn3.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
            btn3.setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
            btn3.setTitle("按钮三", forState: UIControlState.Normal)
            
            return [btn1,btn2,btn3]
            
        }) { (selectedIndex) -> Void in
            
            println("选中\(selectedIndex)")
        }
        

        
        control1.frame = CGRectMake(0, 200, 320, 80)
        control1.layer.borderWidth = 2
        control1.layer.borderColor = UIColor.orangeColor().CGColor
        self.view.addSubview(control1)
        self.control1 = control1
        
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        println("当前值:\(self.control1?.selectedIndex)")
    }
    


}


//
//  ViewController.swift
//  CFSegmentContrl
//
//  Created by 冯成林 on 15/6/24.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var control: CFSegmentControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let control = CFSegmentControl()
        
        let btn1 = UIButton()
        btn1.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        btn1.setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
        btn1.setTitle("按钮一", forState: UIControlState.Normal)
        
        let btn2 = UIButton()
        btn2.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        btn2.setTitle("按钮二", forState: UIControlState.Normal)
        btn2.setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
        
        let btn3 = UIButton()
        btn3.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        btn3.setTitleColor(UIColor.redColor(), forState: UIControlState.Selected)
        btn3.setTitle("按钮三", forState: UIControlState.Normal)
        
        control.btns = [btn1,btn2,btn3]
            
        control.clickItemAtIndex = { (selectedIndex) -> Void in
            
            print("选中\(selectedIndex)")
        }
        

        
        control.frame = CGRectMake(0, 200, 320, 80)
        control.layer.borderWidth = 2
        control.layer.borderColor = UIColor.orangeColor().CGColor
        self.view.addSubview(control)
        self.control = control
        
    }
    
  

}


//
//  CFSegmentContrl.swift
//  CFSegmentContrl
//
//  Created by 冯成林 on 15/6/24.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import UIKit

public class CFSegmentControl: UIView {
    
    private var selectedBtn: UIButton?
    
    var selectedIndex: Int = 0{didSet{indexSelectedAction()}}
    
    var btns: [UIButton]! {didSet{btnAdd()}}
    
    var clickItemAtIndex: ((Int)->Void)?

    
    /** 事件 */
    func btnClick(btn: UIButton){
        
        if(self.selectedBtn === btn){return}
        
        self.selectedBtn?.selected = false
        btn.selected = true
        self.selectedBtn = btn
        self.selectedIndex = btn.tag
        self.clickItemAtIndex?(self.selectedIndex)
    }
    
    func indexSelectedAction(){
        if selectedIndex >= btns.count {return}
        let currentBtn = btns[selectedIndex]
        self.selectedBtn?.selected = false
        currentBtn.selected = true
        self.selectedBtn = currentBtn
    }
    

    /** 添加按钮 */
    func btnAdd(){
        
        if self.btns == nil {return}
        
        for (index,obj) in (self.btns).enumerate(){
            
            let btn =  obj
            
            btn.tag = index
            self.addSubview(btn)
            btn.addTarget(self, action: Selector("btnClick:"), forControlEvents: UIControlEvents.TouchDown)
        }
    }
    
    
    //布局
    override public func layoutSubviews() {
        
        if self.btns == nil {return}
        
        let rect = self.bounds
        let width = rect.size.width / CGFloat(self.btns!.count)
        let height = rect.size.height
        for (index,obj) in (self.btns!).enumerate(){
            
            let btn =  obj
            
            let x = width * CGFloat(index)
            
            let y: CGFloat = 0
            
            let btnF = CGRectMake(x, y, width, height)
            
            btn.frame = btnF
            
            
            if index == 0 {self.btnClick(btn)}
        }
    }

}

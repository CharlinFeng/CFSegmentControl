# CFSegmentControl
双版本分段选取控件
-----
    Charlin出框架的目标：简单、易用、实用、高度封装、绝对解耦！
    
-----

<br /><br />

框架截图 CUT
===============
基本功能演示：<br />
![image](./CFSegmentControl/show2.gif)<br />
<br /><br />

项目实战：特别提示，此控件用于自定义复杂分段！基本功能请使用系统控件。
![image](./CFSegmentControl/show3.gif)<br />
<br />


框架说明 EXPLAIN
===============
本框架以swift语言开发，但swift和oc均可使用。框架不在简单与复杂，在于功能实用。<br />
成都iOS开发群：<br />
二群：369870753（新开，新鲜着呢，快加） <br />
一群：163865401（已爆满，加不上了）  <br /><br />


<br />


####框架特性：<br />
>1.双语可用：swift与oc均可实现调用。<br />
>2.可自定义样式，并以closure回调，无需代理。<br />
>3.本控件主要目的是解决高度自定义样式的分段选取。实际中，这个分段设计可能非常个性化，
因此您需要根据设计图自定义按钮并回传closure。
如果是简单分段选取，可直接使用系统控件即可。

<br />
框架依赖 DEPENDENCE
===============
无

<br />
使用说明 USAGE
===============

友盟文档：http://dev.umeng.com/social/ios/detail-share#1

SSO授权需要link以下系统libraries:
Security.framework
libiconv.dylib
SystemConfiguration.framework
CoreGraphics.Framework
libsqlite3.dylib
CoreTelephony.framework
libstdc++.dylib
libz.dylib

设置URL SCHEME 请参考官方文档。


#### 1. swift使用：
        var control1 = CFSegmentControl(itemsClosure: { () -> NSArray in
            
            //返回一个btn数组即可
            
            //实际使用Btn请封装普通样式及选中样式
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



#### 2. oc使用：

    CFSegmentControl *control = [[CFSegmentControl alloc] initWithItemsClosure:^NSArray *{
        
        //此处btn为实际项目封装效果，你也需要根据你自己的设计图封装
        
        //选项一
        CommentBtn *btn1 = [CommentBtn buttonWithTitle:@"好评" bgColor:hexColor(46b46e)];
        
        //选项二
        CommentBtn *btn2 = [CommentBtn buttonWithTitle:@"基本满意" bgColor:hexColor(f3c152)];
        
        //选项三
        CommentBtn *btn3 = [CommentBtn buttonWithTitle:@"有待提高" bgColor:hexColor(898989)];

        return @[btn1,btn2,btn3];
        
    } clickItemAtIndex:^(NSInteger index) {
        
        NSLog(@"选中%@",@(index));
        
    }];
        
    [self.segContentView addSubview:control];
    
    //添加约束
    [control masViewAddConstraintMakeEqualSuperViewWithInsets:UIEdgeInsetsZero];
    

<br/><br/>
版权 RIGHTS
===============
本框架由冯成林原创，保留一切权利！

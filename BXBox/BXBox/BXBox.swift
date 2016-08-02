//
//  BXBox.swift
//  BXBox
//
//  Created by xiaoxiao on 16/8/2.
//  Copyright © 2016年 bianxiang. All rights reserved.
//

//*=====================================*
//* 公司:上海笑溢网络科技有限公司            *
//* 开发作者: 卞翔                        *
//* 联系QQ: 1023537528                   *
//* iOS技术交流群: 160603792              *
//* GitHub:https://github.com/bianxiang *
//* CSDN:http://blog.csdn.net/bx_jobs   *
//*=====================================*
//*/


import UIKit

class BXBox: UIView {

    var childViews : [UIView]?{
        didSet {
            setup()
        }
        
        
    }
    
    var previousIndex = 0
    var index : Int = 0 {
        
        didSet{
            childViews![previousIndex].hidden = true
            childViews![index].hidden = false
            
            previousIndex = index
        }
        
        
        
        
    }
    
    func setup() {
        
        var i = 0
        
        if childViews == nil {
            return
        }
        for child in childViews! {
            child.frame = self.bounds
            self.addSubview(child)
            if i == 0 {
                child.hidden = false
            }else {
                child.hidden = true
            }
            i += 1;
        }
        
    }
    

}

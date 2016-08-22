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
    
    
    /// tab子页面
    var childViews : [UIView]?{
        didSet {
            setup()
        }
    }
    
    /// 第几页
    var index : Int = 0 {
        
        didSet{
            childViews![previousIndex].hidden = true
            childViews![index].hidden = false
            
            previousIndex = index
        }
        
    }
    
    //MARK: 新增tab子页面
    func appendChild(child:UIView) {
        
        child.frame = self.bounds
        self.addSubview(child)
        child.hidden = true
        childViews?.append(child)
        
        
    }
    
    
    //MARK: - 私有方法
    private var previousIndex = 0
    
    private func setup() {
        
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

//
//  ViewController.swift
//  解锁项目
//
//  Created by 付小宁 on 16/1/18.
//  Copyright © 2016年 Maizi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //在swift中，新建ViewController实例，默认 没有关联xib，一定要开发者指定xib的名字
    let _drawVC = DrawViewController(nibName: "DrawViewController", bundle: nil) //声明一个全局属性
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClicked(sender: UIButton) {
        
        switch sender.tag{
            
        case 100://设置密码
            _drawVC.whTag = 100;
            break;
        case 101://验证密码
            _drawVC.whTag = 101;
            break;
        case 102:
            _drawVC.whTag = 102;
            break;
        default:
            break
        }
        self.presentViewController(_drawVC, animated: true, completion: nil)
    }
    
}


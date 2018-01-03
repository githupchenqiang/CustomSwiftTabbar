//
//  CQ_TabbarViewController.swift
//  ProductSwift
//
//  Created by chenq@kensence.com on 2018/1/3.
//  Copyright © 2018年 chenq@kensence.com. All rights reserved.
//

import UIKit

class CQ_TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
     class func CustomTabBar()->UITabBarController {
        let viewControllerArray = ["CQ_HomeViewController","CQ_CommunViewController","CQ_QuestionViewController","CQ_OwnViewController"]
        let tabBarVC = CQ_TabbarViewController()
        
        let tabbarArray = ["首页","发现","问答","我的"]
        let titleArray = ["首页","发现","问答","我的"]
        var index:Int = 0
        //循环像tabbarcontroller中添加对应的子控制器
        for str in viewControllerArray{
            
            let vc = NSClassFromString(str) as! UIViewController.Type
            //获取到对应的控制器类
            let viewcontroller = vc.self.init()
            //创建导航控制器
            let nav : UINavigationController = CQ_NavViewController(rootViewController: viewcontroller)
            tabBarVC.addChildViewController(nav)
            //设置对应的tabbaritem
            let normalStr:String = tabbarArray[index]
            let title:String = titleArray[index]
            let selectStr:String = normalStr+"Sele"
            nav.tabBarItem = UITabBarItem(title: title, image: CQ_ImageSource.getImgView(normalStr as NSString), selectedImage: CQ_ImageSource.getImgView(selectStr as NSString))
            nav.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.red], for: UIControlState.normal)
            nav.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange], for: UIControlState.selected)
            //调整对应tabbaritem的位置，制作成不规则的tabbar
            //            if index==2{
            //                nav.tabBarItem.imageInsets = UIEdgeInsetsMake(-9, 0, 9, 0)
            //            }else{
            //                nav.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -10, 0)
            //            }
            index += 1
        }
        //设置tabbar的背景
        tabBarVC.tabBar.isTranslucent=false
        tabBarVC.tabBar.barStyle = .black
        tabBarVC.tabBar.barTintColor = UIColor(patternImage: UIImage(named: "Main_tabBar_background")!)
        tabBarVC.tabBar.backgroundImage = UIImage(named: "Main_tabBar_background")
        return tabBarVC   
        
    }
    
}

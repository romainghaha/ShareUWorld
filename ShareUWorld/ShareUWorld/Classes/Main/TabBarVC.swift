//
//  TabBarVC.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/7.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.badgeColor = UIColor.gray
        let shareVC = ShareCollectVC()
        self.makeTabBarButton(childVC: shareVC, title: "视界", imageName: "tabbar_home", selectImage: "tabbar_home_selected")
        let attentionVC = AttentionTabVC()
        self.makeTabBarButton(childVC: attentionVC, title: "关注", imageName: "tabbar_message_center", selectImage: "tabbar_message_center_selected")
        let playVC = PlayerVC()
        self.makeTabBarButton(childVC: playVC, title: "", imageName: "tabbar_compose_camera", selectImage: "")
        let channel = ChannelVC()
        self.makeTabBarButton(childVC: channel, title: "频道", imageName: "tabbar_discover", selectImage: "tabbar_discover_selected")
        let mine = MineVC()
        self.makeTabBarButton(childVC: mine, title: "我", imageName: "tabbar_profile", selectImage: "tabbar_profile_selected")

    }
    func makeTabBarButton(childVC:UIViewController,title:String,imageName:String,selectImage:String) -> () {
        let navVC = UINavigationController()
        navVC.addChildViewController(childVC)
        childVC.tabBarItem.title = title
        let image = UIImage.init(named: imageName)
        childVC.tabBarItem.image = image
        childVC.tabBarItem.image?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let selectImage = UIImage.init(named: selectImage)
        childVC.tabBarItem.selectedImage = selectImage
   childVC.tabBarItem.selectedImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        self.tabBar.tintColor = UIColor.orange
        self.addChildViewController(navVC)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

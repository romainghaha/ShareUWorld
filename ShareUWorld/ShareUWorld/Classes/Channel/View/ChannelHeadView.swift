//
//  ChannelHeadView.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/8.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

class ChannelHeadView: UIViewController  {
    
    override func viewDidLoad() {
        self.setUpUI()
    }
    
    func setUpUI() -> () {
        //轮播器
        self.makeCycleView()
        //两个按钮
        self.makeTwoButton()
        //频道
        self.makeChannelView()
    }
    ///设置轮播器
    func makeCycleView() -> () {
        let cycleView = ChannelHeadScrollView()
        cycleView.backgroundColor = UIColor.orange
        self.view.addSubview(cycleView)
        cycleView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(0)
            make.height.equalTo(100)
        }
    }
    ///设置两个按钮
    func makeTwoButton() -> () {
        let twoButtonView = ChannelHeadTwoButtonView()
        twoButtonView.backgroundColor = UIColor.red
        self.view.addSubview(twoButtonView)
        twoButtonView.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(104)
            make.height.equalTo(60)
        }
    }
    ///设置频道
    func makeChannelView() -> () {
        let channel = ChannelHeaderViewForChannel.init(collectionViewLayout: ChannelHeaderViewForChannelFlowLayout())
        channel.view.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
        self.view.addSubview(channel.view)
        self.addChildViewController(channel)
        channel.didMove(toParentViewController: self)
        channel.view.snp.makeConstraints { (make) in
            make.top.equalTo(168)
            make.left.right.equalTo(0)
            make.height.equalTo(UIScreen.main.bounds.width)
        }
    }
    
}

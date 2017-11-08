//
//  ShareTitleView.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/8.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit
import SnapKit
class ShareTitleView: UIView {
    let titleViewNameArr = ["直播","热门","游戏","同城"]
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUpUI()
    }
    
    func setUpUI() -> () {
        self.isUserInteractionEnabled = true
        for i in 0...3 {
            let button = UIButton()
            button.setTitle(titleViewNameArr[i], for: .normal)
            button.setTitleColor(UIColor.gray, for: .normal)
            button.titleLabel?.textAlignment = NSTextAlignment.center
            button.tag = i
            button.addTarget(self, action: #selector(titleViewButtonClick(button:)), for: .touchUpInside)
            self.addSubview(button)
            button.snp.makeConstraints({ (make) in
                make.top.bottom.equalTo(0)
                make.left.equalTo(60*(i-2))
                make.height.equalTo(40)
                make.width.equalTo(60)
            })
        }
    }
    @objc func titleViewButtonClick(button:UIButton) -> () {
        print("进来了")
        switch button.tag {
        case 0:
            print("tag=\(tag)")
            break
            
        case 1:
            print("tag=\(tag)")
            break
            
        case 2:
            print("tag=\(tag)")
            break
            
        case 3:
            print("tag=\(tag)")
            break
            
        default:
            break
        }
    }
}

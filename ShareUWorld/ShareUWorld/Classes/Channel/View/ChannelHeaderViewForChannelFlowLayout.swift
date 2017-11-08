//
//  ChannelHeaderViewForChannelFlowLayout.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/8.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

class ChannelHeaderViewForChannelFlowLayout: UICollectionViewFlowLayout {
    override func prepare() {
        self.itemSize = CGSize.init(width: (UIScreen.main.bounds.width-3)/4.0 , height: (UIScreen.main.bounds.width-3)/4.0)
        self.minimumLineSpacing = 1
        self.minimumInteritemSpacing = 1
        self.scrollDirection = UICollectionViewScrollDirection.vertical

    }
}

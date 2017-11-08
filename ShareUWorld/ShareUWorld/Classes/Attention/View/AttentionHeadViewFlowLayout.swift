//
//  AttentionHeadViewFlowLayout.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/8.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

class AttentionHeadViewFlowLayout: UICollectionViewFlowLayout {
    override func prepare() {
        self.itemSize = CGSize.init(width: 60, height: 60)
        self.scrollDirection = UICollectionViewScrollDirection.horizontal
        self.minimumLineSpacing = 2
        self.minimumInteritemSpacing = 2
    }
}

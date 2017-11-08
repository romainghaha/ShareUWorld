//
//  ShareCollectionFlowLayout.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/8.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

class ShareCollectionFlowLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        self.itemSize = CGSize.init(width: UIScreen.main.bounds.width/2.0, height: UIScreen.main.bounds.width/2.0)
        self.scrollDirection = UICollectionViewScrollDirection.vertical
        self.minimumLineSpacing = 2
        self.minimumInteritemSpacing = 0
    }
}

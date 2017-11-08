//
//  AttentionHeaderView.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/8.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

class AttentionHeaderView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUpUI()
    }
    func setUpUI() -> () {
        
    }
}

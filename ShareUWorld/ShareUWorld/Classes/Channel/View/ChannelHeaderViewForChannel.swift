//
//  ChannelHeaderViewForChannel.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/8.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit
private let reuseridentifiChannelCellID = "reuseridentifiChannelCellID"
class ChannelHeaderViewForChannel: UICollectionViewController {
    
    override func viewDidLoad() {
        self.setUpUI()
    }

    func setUpUI() -> () {
        self.collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseridentifiChannelCellID)
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseridentifiChannelCellID, for: indexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }
    
    
}

//
//  ShareCollectVC.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/7.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ShareCollectVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置导航栏
        self.makeNavController()
        //设置collectionVIew
        self.makeCollectionView()
    }
    ///设置collection
    func makeCollectionView() -> () {
        let collection = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: ShareCollectionFlowLayout())
        collection.backgroundColor = UIColor.gray
        collection.delegate = self
        collection.dataSource = self
        self.view.addSubview(collection)
        //注册cell
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    ///数据源方法
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.cyan
        return cell
    }
    ///设置导航栏
    func makeNavController() -> (){
        let leftBarbutton = UIBarButtonItem.init(barButtonSystemItem: .camera, target: self, action: #selector(takePhote))
        leftBarbutton.tintColor = UIColor.orange
        let rightBarbutton = UIBarButtonItem.init(barButtonSystemItem: .compose, target: self, action: #selector(composeBtn))
        rightBarbutton.tintColor = UIColor.orange
        self.navigationItem.leftBarButtonItem = leftBarbutton
        self.navigationItem.rightBarButtonItem = rightBarbutton
        let shareTitleView = ShareTitleView.init()
        shareTitleView.frame = CGRect.init(x: 0, y: 0, width: 240, height: 40)
        self.navigationItem.titleView = shareTitleView
        self.navigationItem.titleView?.frame = CGRect.init(x: 0, y: 0, width: 240, height: 40)
        self.navigationItem.titleView?.isUserInteractionEnabled = true
    }
    @objc func takePhote() -> () {
        
    }
    @objc func composeBtn() -> (){
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}

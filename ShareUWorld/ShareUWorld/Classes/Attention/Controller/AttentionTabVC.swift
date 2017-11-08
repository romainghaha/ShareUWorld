//
//  AttentionTabVC.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/7.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit
private let reuseIdentifier = "TableCellID"
private let collReuseIdentifier = "collCellID"
class AttentionTabVC: UITableViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置导航栏
        self.makeNavVC()
        
        //注册cell
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        self.tableView.rowHeight = 100
        let headView = AttentionHeaderView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 60), collectionViewLayout: AttentionHeadViewFlowLayout())
        headView.delegate = self
        headView.dataSource = self
        headView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: collReuseIdentifier)
        self.tableView.tableHeaderView = headView
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collReuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.orange
        return cell
    }
    ///设置导航栏
    func makeNavVC() -> () {
        self.navigationItem.title = "我的关注"
        let rightBarButton = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(addNewFriends))
        rightBarButton.tintColor = UIColor.orange
        self.navigationItem.rightBarButtonItem = rightBarButton
    }
    @objc func addNewFriends() -> () {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)

        cell.backgroundColor = UIColor.gray

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

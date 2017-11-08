//
//  ChannelVC.swift
//  ShareUWorld
//
//  Created by 苏强 on 2017/11/7.
//  Copyright © 2017年 苏强. All rights reserved.
//

import UIKit
private let ChannelVCCellID = "ChannelVCCellID"

class ChannelVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.makeHeadView()
        self.tableView.rowHeight = 80
        self.tableView.sectionHeaderHeight = 10
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: ChannelVCCellID)
    }
    func makeHeadView() -> () {
        let ChannelView = ChannelHeadView()
        
        self.tableView.tableHeaderView = ChannelView.view
        ChannelView.view.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.width + 100 + 60 + 8))
        self.addChildViewController(ChannelView)
        ChannelView.didMove(toParentViewController: self)
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let str = "\(section)"
        return str
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ChannelVCCellID, for: indexPath)
        cell.backgroundColor = UIColor.gray
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

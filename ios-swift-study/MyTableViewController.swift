//
//  MyTableViewController.swift
//  ios-swift-study
//
//  Created by darkpuca on 2015. 1. 28..
//  Copyright (c) 2015년 darkpuca. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var items: [TableItemModel] = []
   
    override func viewDidLoad() {
        initItems()
        tableView.reloadData()
    }
    
    // MARK: - functions
    func initItems (){
        for idx in 0...5 {
            var item = TableItemModel(name: String(idx))
            items.append(item)
        }
    }

    @IBAction func unwindToTable(segue: UIStoryboardSegue) {
        println("unwindToTable")
        
        let sourceController = segue.sourceViewController as MyPopupViewController
        if let newItem = sourceController.item {
            items.append(newItem)
            tableView.reloadData()
        }
    }
    
    // MARK: - UITableViewDelegate & UITableViewDataSource methods
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = items[indexPath.row].createdDate()
        
        return cell
    }
}

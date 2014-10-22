//
//  ViewController.swift
//  DVColorLockViewDemo
//
//  Created by Dylan Vann on 2014-10-22.
//  Copyright (c) 2014 Dylan Vann. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var cells:NSArray = []
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewStyle) {
        super.init(style: style)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        
        self.tableView.rowHeight = 44
        
        cells = [
            DVColorLockViewTestTableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: nil),
        ]
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var cell = self.tableView(tableView, cellForRowAtIndexPath: indexPath)
        
        return super.tableView(tableView, heightForRowAtIndexPath: indexPath)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return cells[indexPath.row] as UITableViewCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell = self.tableView(tableView, cellForRowAtIndexPath: indexPath)
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}


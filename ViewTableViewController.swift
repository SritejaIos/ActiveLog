//
//  ViewTableViewController.swift
//  ActivityLog
//
//  Created by Sriteja Thuraka on 10/23/16.
//  Copyright © 2016 teja. All rights reserved.
//

import UIKit

class ViewTableViewController: UITableViewController {
    @IBOutlet var tableviewr: UITableView!
   
    var tasks = ["sdgfjhsdg","fhsdgfsd","sdhfgdhsfg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    switch(indexPath.section) {
    case 0:
    switch (indexPath.row) {
    case 0:
    let cell = tableView.dequeueReusableCellWithIdentifier("cell0", forIndexPath: indexPath) as! SettingsCell
    cell.backgroundColor = UIColor.redColor()
    return cell
    
    case 1:
    let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! SettingsCell
    cell.backgroundColor = UIColor.whiteColor()
    return cell
    
    default:
    fatalError("Unexpected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    }
   
}



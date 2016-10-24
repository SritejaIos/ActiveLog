    //
    //  ViewController.swift
    //  ActivityLog
    //
    //  Created by Sriteja Thuraka on 10/23/16.
    //  Copyright © 2016 teja. All rights reserved.
    //
    
    import UIKit
    
    class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
        
        @IBOutlet var tableView: UITableView!
         var tasks: [Task] = []
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            tableView.delegate = self
            tableView.dataSource = self
        }
        internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return tasks.count
        }
        internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
            let task = tasks[indexPath.row]
            cell.textLabel?.text = task.name
            return cell
           
        }
        func getData ()
        {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            do{
            tasks = try context.fetch(Task.fetchRequest())
            }catch{
                print("fetching failure")
            }
            
        }
        override func viewWillAppear(_ animated: Bool) {
            getData()
            tableView.reloadData()
        }
        
        
      
        
        
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
    }
    

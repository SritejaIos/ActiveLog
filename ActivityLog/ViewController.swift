    //
    //  ViewController.swift
    //  ActivityLog
    //
    //  Created by Sriteja Thuraka on 10/23/16.
    //  Copyright © 2016 teja. All rights reserved.
    //
    
    import UIKit
    
    class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
        
        @IBOutlet var tableView: UITableView!
        
        var tasks: [Task] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            tableView.delegate = self
            tableView.dataSource = self
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return tasks.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            let task = tasks[indexPath.row]
            cell.textLabel?.text = task.name
            return cell
        }
        func getData()
        {
          let context =  (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            do{
            tasks = try context.fetch(Task.fetchRequest())
            }catch{
                print("fetching error")
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
    

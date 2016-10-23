//
//  TaskViewController.swift
//  ActivityLog
//
//  Created by Sriteja Thuraka on 10/23/16.
//  Copyright © 2016 teja. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    @IBOutlet var taskTest: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addButton(_ sender: Any) {
        
       let context =  (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
       let task = Task(context: context)
       task.name = taskTest.text!
        
       navigationController?.popViewController(animated: true)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}

//
//  FirstViewController.swift
//  TaskList
//
//  Created by Leandro Salas on 6/10/14.
//  Copyright (c) 2014 leandro. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableTasks: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Returning to view
    override func viewWillAppear(animated: Bool) {
        tableTasks.reloadData();
    }
    
    //UItableview Delegate
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            
            taskMgr.removeTask(indexPath.row);
            tableTasks.reloadData();
            
        }
        
        
    }
    
    
    //UItableview Datasource
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count;
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Test");
        
        cell.text = taskMgr.tasks[indexPath.row].name;
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc;
        
        return cell;
    }
    
    


}


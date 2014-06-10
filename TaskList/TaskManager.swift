//
//  TaskManager.swift
//  TaskList
//
//  Created by Leandro Salas on 6/10/14.
//  Copyright (c) 2014 leandro. All rights reserved.
//

import UIKit


var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {

    var tasks = task[]();
    
    func addTask(Name: String, desc: String){
        tasks.append(task(name:Name,desc:desc))
    }
    
    func removeTask(position: Int){
        
        println(position);
        
        tasks.removeAtIndex(position);
        
    }
    
}

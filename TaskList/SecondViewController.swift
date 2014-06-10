//
//  SecondViewController.swift
//  TaskList
//
//  Created by Leandro Salas on 6/10/14.
//  Copyright (c) 2014 leandro. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Events
    @IBAction func btnAddTask(sender: UIButton){

        var Name: String = txtTask.text;
        var desc: String = txtDesc.text;
               
        taskMgr.addTask(Name, desc: desc);
        
        self.view.endEditing(true);
        
        txtDesc.text = ""
        txtTask.text = ""
        
        self.tabBarController.selectedIndex = 0;
        
    }
    
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true);
    }
    

    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder();
        return true;
    }

}


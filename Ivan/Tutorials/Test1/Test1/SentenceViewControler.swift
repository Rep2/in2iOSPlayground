//
//  SentenceViewControler.swift
//  Test1
//
//  Created by IN2 MacbookPro on 20/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit
class SentenceViewControler:UIViewController,UITableViewDataSource{
  
   
    @IBOutlet weak var table: UITableView!
    var sentence :String!
    var number:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
      //  table.tableFooterView=UIView(frame: CGRectZero)
        
        table.reloadData()
        
 
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return number!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("stringCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text=sentence
        return cell
    }
    
}

//
//  UIDataTableViewController.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 28/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit
/**
The class which handles the information shown on the table view about the posts.
*/
class UIDataTableViewController: UITableViewController {
    /** the data from different posts, not parsed*/
    var data:NSArray = []
    /** the parsed array data*/
    var userData:[DPTableData]=[]
    /** aray of users*/
    var user:NSArray?
    /// Calls the super method and registers the cell for the post data.
    override func viewDidLoad() {
        super.viewDidLoad()
        ///Registering the new cell
        var nib=UINib(nibName: "UIdataCell", bundle: nil)
        tableView!.registerNib(nib, forCellReuseIdentifier: "dataCell")
        
        tableView.estimatedRowHeight = 500
        tableView.rowHeight = UITableViewAutomaticDimension
        
        self.update()
    }
    
/**
Refreshing the data when the user puls the table.

:param: sender The refresh method(pull)
*/
    @IBAction func refresh(sender: AnyObject) {
        var service=NCPosts()
        service.getData(getData)
        
    }
/**
Procces the data from the request.

:param: data Raw data got from the web service get method.

:returns: Void
*/
    func getData(data:NSArray)->Void{
            self.data=data
            self.update()
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.tableView.reloadData()
                self.refreshControl?.endRefreshing()
            })
           
        
    }

/**
Updates the table with new data.

*/
    func update(){
        userData=[]

        if (data != []){
            for var j=0;j<data.count; j=j+1{
                userData.append(DPTableData(data: data[j] as! NSDictionary))
            }
        }
    }
    ///Calls the super method.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    /// Returns 1 , the number of Sections is static to only one
    ///:returns: 1
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    /**
    Returns how many rows will be in the Section.
    :returns: The count of data which is an array.
    */
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    /**
    Creates a new cell with data related to the number in the row of that cell.
    :param: tableView The table we are on.
    :param: indexPath The index of the cell.
    :returns: New cell with data relative to the indexPath.
    */
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dataCell", forIndexPath: indexPath) as! UIDataCell
        if(indexPath.item<userData.count){
            cell.data = userData[indexPath.item]
            cell.setData()
        }
        return cell
    }
    /**
    Activates when the user selects a cell. The view moves to a new one which has the info about the comments from this cell/post. If the number of comments is 0, the view stays the same.
    :param: tableView The table we are on.
    :param: indexPath The index of the selected cell.
    */
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let dict:AnyObject!=self.data[indexPath.item] as? NSDictionary
        var coments=dict["komentari"]
        self.user=coments as? NSArray
        
        if(user?.count>0){
          self.performSegueWithIdentifier("cellSelected", sender: self)
        }
    }
    /**
    Prepares for the segue, sets the comments of the next view.
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "cellSelected") {
            let secondViewController = segue.destinationViewController as! UICommentViewController
            secondViewController.comments = self.user  
        }
    }


}

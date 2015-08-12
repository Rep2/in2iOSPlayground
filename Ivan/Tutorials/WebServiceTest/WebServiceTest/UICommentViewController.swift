//
//  UICommentViewController.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 28/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit
///The view controller for the comment view, which shows the comments of a specific post.
class UICommentViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    /** the array of comments*/
    weak var comments:NSArray?
    /** the table in which we put the comments*/
    @IBOutlet weak var table: UITableView!
    ///Calls the super method and inits the table.
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate=self
        table.dataSource=self
        table.estimatedRowHeight=500
    }
    ///Calls the super method.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    /**
    Function for the number of rows in a section.
    :param: tableView The view we are on.
    :param: section The index of the section.
    :returns: The number of comments in the comments array.
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (comments?.count)!
    }
    /**
    The function which builds a cell depending on the index.
    :param: tableView The table we are on.
    :param: indexPath The index for the cell.
    :returns: A cell populated depending on the index, which represents the index in the comments array.
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("commentCell", forIndexPath: indexPath) as! UICommentsTableViewCell
        var dict  = comments?[indexPath.item] as? NSDictionary
        var text : String? = dict?["sadrzaj"] as? String
        
        cell.commentLabel.text = text!
        
        return cell
    }


}

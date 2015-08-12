//
//  UIBeginScreenViewController.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 27/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

/**
The begining screen. Users can start to download the data from here.
*/
public class UIBeginScreenViewController: UIViewController {
    /** Activity which runs while we get the data*/
    @IBOutlet weak var activity: UIActivityIndicatorView!
    /** Array of data that was given from the 'WebServiceHandler'*/
    var data:NSArray=[]
/**
Calls the super viewDidLoad and init the activity indicator.
*/
    override public func viewDidLoad() {
        super.viewDidLoad()
        activity.hidesWhenStopped=true
        activity.hidden=true
    }
    ///Calls the super function.
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
/**
 Function that is invoked when the button is pressed. It starts the animation and call the web service.
    
 :returns: nothing
*/
    @IBAction func buttonPressed(sender: AnyObject) {
        activity.hidden=false
        activity.startAnimating()
        //var con=GetTheData(observer: nextNavControler)
        //con.connect()
        var con=NCPosts()
        con.getData(nextNavControler)

    }
    
    /**
    Function that is send as a completion handler to handel the data got from the web.
    
    :param: data  array of data that was parsed with JSON.

    :returns: returns Void
    */
    func nextNavControler(data:NSArray){
        let navigationController=UINavigationController()
        let secondView=self.storyboard?.instantiateViewControllerWithIdentifier("infoTableView") as! UIDataTableViewController
        
        secondView.data=data
        secondView.update()
        ///move on the next controller.
        navigationController.pushViewController(secondView, animated: true)
        self.presentViewController(navigationController, animated: true, completion: nil)
        activity.stopAnimating()        
    }


}

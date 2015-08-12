//
//  MySplitViewController.swift
//  ContolerPractice
//
//  Created by IN2 MacbookPro on 23/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class MySplitViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {

        super.viewDidLoad()
        self.delegate=self
        self.preferredDisplayMode = UISplitViewControllerDisplayMode.PrimaryOverlay
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController:UIViewController!, ontoPrimaryViewController primaryViewController:UIViewController!) -> Bool {
        if let secondaryAsNavController = secondaryViewController as? UINavigationController {
            if let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController {
                if topAsDetailController.selectedIndex == nil {
                    // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
                    return true
                }
            }
        }
        return false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

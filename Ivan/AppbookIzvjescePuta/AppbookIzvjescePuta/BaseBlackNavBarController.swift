//
//  BaseBlackNavBarController.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit

class BaseBlackNavBarContoller:UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        blackNavBarSetup()
        whiteTitle()
        backButtonTitle()
        navigationItem.titleView?.tintColor = UIColor.whiteColor()
        
    }
    
    // Black nav bar
    func blackNavBarSetup(){
        self.view.addSubview(createBlackNavBar())
        self.view.sendSubviewToBack(view)
    }
    
    func createBlackNavBar() -> UIView{
        
        let blackNavBar = UIView(frame: CGRectMake(0, 0, self.view.bounds.size.width, 64))
        blackNavBar.backgroundColor = UIColor(red: 85/255.0, green: 85/255.0, blue: 85/255.0, alpha: 1.0)
        return blackNavBar
    }
    
    func backButtonTitle(){
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationController!.navigationItem.backBarButtonItem = backButton
    }
    
    func whiteTitle(){
        view.tintColor = UIColor.whiteColor()
        navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        navigationController!.navigationBar.barTintColor = UIColor.whiteColor()
        navigationController!.navigationBar.barStyle = UIBarStyle.Black
        navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor(), NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 21)!]
    }
    
}
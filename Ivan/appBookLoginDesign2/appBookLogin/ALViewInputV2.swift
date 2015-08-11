//
//  ALViewInputV2.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 06/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class ALViewInputV2: UIViewController {
    @IBOutlet weak var background: UIView!

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var Activity: UIActivityIndicatorView!
    @IBOutlet weak var prijava: UIButton!
    var dimView:UIView?
    
    override func viewDidLoad() {
        background.layer.cornerRadius = 5
        prijava.layer.cornerRadius = 3
        prijava.layer.borderColor = UIColor.whiteColor().CGColor
        prijava.layer.borderWidth = 2
        
        username.attributedPlaceholder = NSAttributedString(string:username.placeholder!,
            attributes:[NSForegroundColorAttributeName: UIColor.lightTextColor()])
    
        password.attributedPlaceholder = NSAttributedString(string:password.placeholder!,
            attributes:[NSForegroundColorAttributeName: UIColor.lightTextColor()])
        
        
        self.title="Prijava"
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        Activity.hidesWhenStopped = true

        dimView = UIView(frame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        
        dimView!.backgroundColor = UIColor.blackColor()
        dimView!.alpha = 0.0
        
        self.view.addSubview(dimView!)
        self.view.sendSubviewToBack(dimView!)
      ///  self.view.bringSubviewToFront(password)
      //  self.view.bringSubviewToFront(username)
    }
    
    @IBAction func prijava(sender: AnyObject) {
        ALInputPresenter.instance.loginPressed(username, password:password,item:self)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        
    }
    
    func dimViewToFront(){
        
        self.view.bringSubviewToFront(dimView!)
        UIView.animateWithDuration(0.3, animations: {dimView?.alpha = 0.5})
        
        Activity.startAnimating()
        self.view.bringSubviewToFront(Activity)
    }
    
    func dimViewToBack(){
        Activity.stopAnimating()
        
        UIView.animateWithDuration(0.3, animations: {dimView?.alpha = 0.0})
        self.view.sendSubviewToBack(dimView!)
        self.view.sendSubviewToBack(Activity)
        
    }
    //Calls this function when the tap is recognized.
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

//
//  ALInput.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

///Scena za prijavu.
class ALInput: UIViewController {
    ///Polje za unos korisnickog imena.
    @IBOutlet weak var username: UITextField!
    ///Polje za unos sifre.
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var Activity: UIActivityIndicatorView!
    var dimView:UIView?
    
    ///Metoda pozvana prilikom prikaza prozora.
    override func  viewDidLoad() {
        super.viewDidLoad()
        self.title="Prijava"
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        Activity.hidesWhenStopped = true
        
        username.tintColor = UIColor.redColor()
        password.tintColor = UIColor.redColor()
        dimView = UIView(frame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))

        dimView!.backgroundColor = UIColor.blackColor()
        dimView!.alpha = 0.0
        self.view.addSubview(dimView!)
        self.view.sendSubviewToBack(dimView!)
        
        
        ///ALInputPresenter.instance.viewDidLoad(self)
        
    }
    //Calls this function when the tap is recognized.
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let borderUsername = CALayer()
        let width = CGFloat(1.0)
        borderUsername.borderColor = UIColor.darkGrayColor().CGColor
        borderUsername.frame = CGRect(x: 0, y: username.frame.size.height - width, width:  username.frame.width, height: username.frame.size.height)
        
        borderUsername.borderWidth = width
        username.layer.addSublayer(borderUsername)
        
        let borderPassword = CALayer()
        borderPassword.borderColor = UIColor.darkGrayColor().CGColor
        borderPassword.frame = CGRect(x: 0, y: password.frame.size.height - width, width:  password.frame.size.width, height: password.frame.size.height)
        
        borderPassword.borderWidth = width
        password.layer.addSublayer(borderPassword)
        
    }
    
    ///Metoda pozvana prilikom pritiska tipke prijava.
    @IBAction func prijava(sender: AnyObject) {
        //ALInputPresenter.instance.loginPressed(username, password:password,item:self)
        
        
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
}

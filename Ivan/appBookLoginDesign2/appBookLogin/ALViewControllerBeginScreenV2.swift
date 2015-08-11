//
//  ALViewControllerBeginScreenV2.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 06/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class ALViewControllerBeginScreenV2: UIViewController {
    
    @IBOutlet weak var dobrodosli: UILabel!

    @IBOutlet weak var prijavaButton: UIButton!
    
    override func viewDidLoad() {
        
        prijavaButton.layer.cornerRadius = prijavaButton.layer.frame.width/2
        prijavaButton.layer.borderWidth = 2
        prijavaButton.layer.borderColor = UIColor.whiteColor().CGColor
        
        let font = dobrodosli.font
        let textFontAttributes = [
            NSFontAttributeName : font,
            // Note: SKColor.whiteColor().CGColor breaks this
            NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSStrokeColorAttributeName: UIColor.blackColor(),
            // Note: Use negative value here if you want foreground color to show
            NSStrokeWidthAttributeName: -3
        ]
        
        let myMutableString = NSMutableAttributedString(string: dobrodosli.text!, attributes: textFontAttributes)
        
        dobrodosli.attributedText = myMutableString
        
        self.title = ""
        self.navigationController?.navigationBarHidden = true
        self.navigationController?.navigationBar.tintColor = UIColor.redColor()
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        ALBeginPresenter.instance.viewDidLoad()
    }
    
    @IBAction func prijava(sender: AnyObject) {
                ALBeginPresenter.instance.loginPressed()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.navigationBarHidden = false
    }

}

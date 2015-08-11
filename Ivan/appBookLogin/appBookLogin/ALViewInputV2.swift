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
    
    @IBOutlet weak var prijava: UIButton!
    
    override func viewDidLoad() {
        background.layer.cornerRadius = 5
        prijava.layer.cornerRadius = 3
        prijava.layer.borderColor = UIColor.whiteColor().CGColor
        prijava.layer.borderWidth = 2
        
        username.attributedPlaceholder = NSAttributedString(string:username.placeholder!,
            attributes:[NSForegroundColorAttributeName: UIColor.lightTextColor()])
    
        password.attributedPlaceholder = NSAttributedString(string:password.placeholder!,
            attributes:[NSForegroundColorAttributeName: UIColor.lightTextColor()])
    }
}

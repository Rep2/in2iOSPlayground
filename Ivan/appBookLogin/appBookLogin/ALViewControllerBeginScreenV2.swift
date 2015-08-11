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
    @IBOutlet weak var prijava: UIButton!
    override func viewDidLoad() {
        
        prijava.layer.cornerRadius = 60
        prijava.layer.borderWidth = 2
        prijava.layer.borderColor = UIColor.whiteColor().CGColor
        
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
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    ///    self.navigationController?.navigationBarHidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBarHidden = false
    }

}

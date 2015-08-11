//
//  ALBeginScreen.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit
///Početna scena.
class ALBeginScreen: UIViewController {
    ///Pozadina pocetnog ekrana.
    @IBOutlet weak var backGround: UIImageView!
    ///Tipka za prijavu.
    @IBOutlet weak var prijavaButton: UIButton!
    
    @IBOutlet weak var dobrodosli: UILabel!
    
    ///Poziv prilikom prikaza scene.
    override func viewDidLoad() {
        animateBackground()
        self.customiseButton()
        self.title = ""
        self.navigationController?.navigationBarHidden = true
        self.navigationController?.navigationBar.tintColor = UIColor.redColor()
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        ALBeginPresenter.instance.viewDidLoad()
    }
    
    ///Poziv prilikom pritiska tipke.
    @IBAction func prijava(sender: AnyObject) {
        ALBeginPresenter.instance.loginPressed()
    }
    
    func animateBackground(){
        self.backGround.frame = CGRectMake(0,self.view.bounds.size.height/2+5, 667, 762);
        
        var thePath = CGPathCreateMutable();
        CGPathMoveToPoint(thePath, nil, self.view.bounds.size.width - 275,self.view.bounds.size.height/2+5);
        CGPathAddLineToPoint(thePath, nil,330,self.view.bounds.size.height/2+5);
        
        var animation = CAKeyframeAnimation(keyPath: "position")
        animation.duration = 20
        animation.path = thePath
        animation.autoreverses = true
        animation.repeatCount = Float.infinity
        
        self.backGround.layer.addAnimation(animation, forKey: "position")
    
    }
    
    func customiseButton(){
        prijavaButton.layer.cornerRadius=5
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
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        self.navigationController?.navigationBarHidden = true
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        self.navigationController?.navigationBarHidden = false
    }
    
}

//
//  ALViewDim.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit
///Razred koji prosiruje UIViewController tako da omogucuje stavljanje i skidanje tamne pozadine ispred trenutnog pogleda.
class ALViewDim: UIViewController {
    ///Tamna pozadina.
    var dimView:UIView?
    
    /// Inicijalizira tamnu pozadinu.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dimView = UIView(frame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        
        dimView!.backgroundColor = UIColor.blackColor()
        dimView!.alpha = 0.0
        self.view.addSubview(dimView!)
        self.view.sendSubviewToBack(dimView!)
        
    }
    
    ///Pomakne tamnu pozadinu napred.
    func dimViewToFront(){
        self.view.bringSubviewToFront(dimView!)
        UIView.animateWithDuration(0.3, animations: {dimView?.alpha = 0.5})
    }
    
    ///Pomakne tamnu pozadinu natrag.
    func dimViewToBack(){
        UIView.animateWithDuration(0.3, animations: {dimView?.alpha = 0.0})
        self.view.sendSubviewToBack(dimView!)
    }
}

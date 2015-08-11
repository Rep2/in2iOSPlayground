//
//  ALPresenter.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit
///Glavni razred svih presentera.
class ALPresenter:NSObject{
    
    ///Metoda za slanje obavijesti korisniku.
    ///:param: title naslov pobavijesti.
    ///:param: text text koji će biti prikazan u obavijesti.
    func alertWithText(title:String, text:String){
        //1. Create the alert controller.
        var alert = UIAlertController(title: title, message: text, preferredStyle: .Alert)
        

        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        
        //4. Present the alert.
        RSWireframe.instance.navigationController.presentViewController(alert, animated: true, completion: nil)    }
    
    
}

//
//  IPDataView.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 10/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit

class IPDataView: IPBasicView {
    ///Text prvog naslova.
    var naslov1Text :String!
    ///Text drugog naslova.
    var naslov2Text :String!
    ///Text naslova pogleda.
    var titleText :String!
    ///Text prvog podnaslova.
    var podnaslov1Text:String!
    ///Text polja za unos.
    var textFieldText:String!
    ///Referenca na prvi naslov.
    @IBOutlet weak var naslov1: UILabel!
    ///Referenca na prvi podnaslov.
    @IBOutlet weak var podnaslov1: UILabel!
    ///Referenca na drugi naslov.
    @IBOutlet weak var naslov2: UILabel!
    ///Referenca na polje za text.
    @IBOutlet weak var textField: UITextField!
    ///Referenca na tipku.
    @IBOutlet weak var button: UIButton!
    
    ///Odredjivanje izgleda.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        self.navigationItem.hidesBackButton = true
        button.layer.cornerRadius = 3
    }
    
    ///Dodavanje bordera ispod podnaslova.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.lightGrayColor().CGColor
        border.frame = CGRect(x: 0, y: podnaslov1.frame.size.height - width, width:  podnaslov1.frame.width, height: width)
        
        border.borderWidth = width
        podnaslov1.layer.addSublayer(border)
    }
    
    ///Metoda pozvana prilikom pritiska tipke.
    @IBAction func posalji(sender: AnyObject) {
        self.buttonPressed(sender)
    }
    
    ///Punjenje pogleda sa podatcima.
    ///:param: data podatci s kojim punimo.
    func fillWithData(data :AnyObject){
        let textData = data as? ViewText
        if(textData != nil){
            self.titleText = textData!.viewTitle
            self.naslov1Text = textData!.firstTitle
            self.naslov2Text = textData!.secondTitle
            self.podnaslov1Text = textData!.firstSubtitle
            self.textFieldText = textData!.textField
        }
        
    }
    
    ///Metoda pozvana prilikom prikazivanja pogleda.
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.naslov1.text = naslov1Text
        self.title = self.titleText
        self.naslov2.text = self.naslov2Text
        self.podnaslov1.text = self.podnaslov1Text
        self.textField.text = self.textFieldText
        self.navigationItem.backBarButtonItem?.title = ""
    }
    
    //Calls this function when the tap is recognized.
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}

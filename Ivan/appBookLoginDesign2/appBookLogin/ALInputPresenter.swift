//
//  ALInputPresenter.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit
///Presenter pogleda za unos podataka.
class ALInputPresenter:ALPresenter{
    ///Singleton instanca.
    static var instance=ALInputPresenter()
    var lastView:ALViewInputV2?
    
    ///Metoda pozvana u slucaju pritiska na login tipku.
    ///:params: username polje za unos korisnickog imena.
    ///:params: passowrd polje za unos sifre.
    func loginPressed(username:UITextField, password:UITextField, item:ALViewInputV2){
        let usernameText=username.text
        let passwordText=password.text
        self.lastView=item
        self.lastView?.dimViewToFront()

        ALInputInteractor.instance.checkLogin(usernameText, password: passwordText)
    }
    
    ///Metoda pozvana ukoliko je uspješna prijava.
    func loginSucceded(){
        lastView?.dimViewToBack()
        RSWireframe.instance.pushViewWithName("loggedIn")
        
    }
    
    func loginFailed(){
        lastView?.dimViewToBack()
    }
    
    func loginFromPreviusUser(){
        self.lastView?.dimViewToFront()
    }
    ///Metoda pozvana kada se prozor pokaže.
    ///:params: item prozor koji se pokaže.
    func viewDidLoad(){
        
        
        ALInputInteractor.instance.viewDidLoad()
      /**  
        var newBackButton=UIBarButtonItem(title: "< Back", style: UIBarButtonItemStyle.Plain, target: self, action: "back")
        item.navigationItem.leftBarButtonItem=newBackButton
        */
    }
    
    ///Funckija koja briše sa keychaina logiranog korisnika, te se vrati na prethodni prozor.
    func back () {
        KeyChain.deleteToken("loggedUser")
        RSWireframe.instance.popOne()
    }
}

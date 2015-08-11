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

    
    ///Metoda pozvana u slucaju pritiska na login tipku.
    ///:param: username polje za unos korisnickog imena.
    ///:param: passowrd polje za unos sifre.
    func loginPressed(username:String, password:String){
        self.dimActivate()

        if(count(username) == 0)||(count(password )==0){
            ALInputPresenter.instance.alertWithText("", text: "Jedno ili više polja je ostalo prazno")
            ALInputPresenter.instance.loginFailed()
        }else{
            ALInputInteractor.instance.checkLogin(username, password: password)
        }
    }
    
    ///Metoda pozvana ukoliko je uspješna prijava.
    func loginSucceded(){
        self.dimDeactivate()
        RSWireframe.instance.pushViewWithName("loggedIn")
        
    }
    
    ///Metoda pozvana prilikom neuspjelog pokušaja logiranja.
    func loginFailed(){
        self.dimDeactivate()
    }
    
    ///Metoda pozvana ukoliko se korisnik logirao kao prijasni korisnik.
    func loginFromPreviusUser(){
        self.dimActivate()
    }
    
    ///Metoda pozvana kada se prozor pokaže.
    func viewDidLoad(){
        ALInputInteractor.instance.viewDidLoad()
        self.dimActivate()

    }
    
    ///Metoda koja pokusa aktivirati tamni zaslon ispred trenutnog pogleda.
    func dimActivate(){
        let view = RSWireframe.instance.navigationController.topViewController as? ALViewDim
        if (view != nil){
            view?.dimViewToFront()
        }
            
        
    }
    
    ///Metoda koja pokusa deaktivirati tamni zaslon ispred trenutnogog pogleda.
    func dimDeactivate(){
        let view = RSWireframe.instance.navigationController.topViewController as? ALViewDim
        if (view != nil){
            view?.dimViewToBack()
        }
    }
    
    ///Funckija koja briše sa keychaina logiranog korisnika, te se vrati na prethodni prozor.
    func back () {
        KeyChain.deleteToken("loggedUser")
        RSWireframe.instance.popOne()
    }
}

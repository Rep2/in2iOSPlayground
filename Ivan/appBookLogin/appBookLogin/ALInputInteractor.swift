//
//  ALInputInteractor.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation

///Interactor za unos korisničkih podataka prilikom logiranja.
class ALInputInteractor{
    ///Sintleton instanca.
    static var instance=ALInputInteractor()
    ///Korisničko ime zadnjeg pokusaja.
    var username=""
    ///Lozinka zadnjeg pokusaja.
    var password=""

    /** Provjera login podataka.
    :param: username korisnicko ime.
    :param: password lozinka.
    */
    func checkLogin(username:String,password:String){

            self.password=password
            self.username=username
            ALNetworkLogin.instance.login(username,password:password)
        
    }
    
    ///Metoda pozvana prilikom uspjesno uspostavljenje veze sa poslužiteljom.
    ///:param: dict odgovor posluzitelja u obliku rijecnika.
    func inputSucces(dict:NSDictionary){
        let succes = dict["success"] as! Int
        if(succes == 0){
            
            ALInputPresenter.instance.alertWithText("",text:"Upišite ispravne podatke i pokušajte ponovno")
            ALInputPresenter.instance.loginFailed()
        }else{
            KeyChain.saveToken("loggedUser", token:["username":username,"password":password] )

            ALInputPresenter.instance.loginSucceded()
            let user = Djelatnik.initWithDict(dict)
            
            
        }
        
    }
    
    ///Metoda pozvana prilikom neuspjele konekcije sa posluziteljom.
    func inputFailed(){
        ALInputPresenter.instance.loginFailed()
        ALInputPresenter.instance.alertWithText("",text:"Došlo je do pogreške, pokušajte malo kasnije")
        
        
    }
    
    ///Metoda pozvana prilikom instanciranjan pocetnog prozora.
    func viewDidLoad(){
        let dict = KeyChain.loadToken("loggedUser")
        if( dict != nil){
            let username=dict?["username"] as! String
            let password=dict?["password"] as! String
            self.checkLogin(username, password: password)
            
        }
    }
}

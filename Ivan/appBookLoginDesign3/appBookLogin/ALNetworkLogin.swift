//
//  ALNetworkLogin.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import AFNetworking
import Security
///Klasa za koristenje login servisa.
class ALNetworkLogin:ALNetwork{
    ///Singleton preko kojeg pristupamo.
    static var instance = ALNetworkLogin()

    ///inicijalizira varijable potrebne za login na servis
    override init(){
        super.init()
        url="https://appbook.in2.hr/ords/appbookrest/user/login"
        
    }
    
    /// Pokusa se logirati.
    ///Ukoliko servis uspije, pozove onSucces, to ne znaci da je login uspjesan, nego da je servis povezan.
    ///Ukoliko dodje do greske pozove onFail.
    func login(){
        let data = KeyChain.loadToken("login")
        if( data != nil){
    
            let username=data?["username"] as! String
            let password=data?["password"] as! String
            params=["username":username,"password":password]
            self.POST()
            
        }
    }
    
    /** Metoda pozvana ukoliko POST metoda uspije.
    :params: operation http request operation koji je dobije kao odgovor na upit.
    :params: response odgovor koji je dobijen na upit , obicno u obliko JSONa.
    */
    override func onSucces(operation:AFHTTPRequestOperation!, response:AnyObject!)->Void{
        print(response)
        ALInputInteractor.instance.inputSucces(response as! NSDictionary)
        
    }

    /** Metoda pozvana ukoliko POST metoda ne uspije.
    :params: operation Operacija koja je dobijena kao odgovor.
    :params: error error koji je prouzrocio neuspjeh operacije.
    */
    override func onFailure(operation:AFHTTPRequestOperation!,error:NSError!)->Void{
        ALInputInteractor.instance.inputFailed()
        print(error)
    
    }
}

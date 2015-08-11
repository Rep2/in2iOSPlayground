//
//  ALInputInteractor.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation


class ALInputInteractor{
    static var instance=ALInputInteractor()
    var username=""
    var password=""

    func checkLogin(username:String,password:String){
        if(count(username) == 0)||(count(password )==0){
            ALInputPresenter.instance.alertWithText("", text: "Jedno ili više polja je ostalo prazno")
            ALInputPresenter.instance.loginFailed()
        }else{
            self.password=password
            self.username=username
            KeyChain.saveToken("login", token:["username":username,"password":password] )
            ALNetworkLogin.instance.login()
        }
    }
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
    func inputFailed(){
        ALInputPresenter.instance.loginFailed()
        ALInputPresenter.instance.alertWithText("",text:"Došlo je do pogreške, pokušajte malo kasnije")
        
        
    }
    
    func viewDidLoad(){
        let dict = KeyChain.loadToken("loggedUser")
        if( dict != nil){
            let username=dict?["username"] as! String
            let password=dict?["password"] as! String
            self.checkLogin(username, password: password)
            
        }
    }
    
}

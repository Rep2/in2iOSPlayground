//
//  ALBeginPresenter.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
///Pocetni pressenter.
class ALBeginPresenter :ALPresenter {
    ///Singleton instanca
    static var instance = ALBeginPresenter()
    
    ///Metoda koja signalizira prelazak na sljedeći view.
    func loginPressed(){
        RSWireframe.instance.pushViewWithName("loginV2")
    }
    
    ///Metoda koja oznacuje da je pozvan prozor.
    func viewDidLoad(){
        let dict = KeyChain.loadToken("loggedUser")
        if( dict != nil){
            ALInputPresenter.instance.viewDidLoad()
        }
    }
    
}

//
//  Djelatnik.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 04/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
///Razred za pohranu podataka djelatnika.
class Djelatnik {
    ///Id djelatnika.
    static var djk_id : String = "djk_id"
    /// Email djelatnika.
    static var email :String = "email"
    /// error za djelatnika.
    static var error :String = "error"
    /// ime korisnika.
    static var ime : String = "ime"
    /// prezime korisnika.
    static var prezime : String = "prezime"
    /// Uloga djelatnika u firmi.
    static var rm :String = "rm"
    
    static var data: Djelatnik!
    
    
    var dictionary = [String:AnyObject]()
    
    ///Inicijalizacija varijabla razreda preko rijecnika.
    ///:params: dict rijecnik kojeg koristimo za inicijalizaciju parametra.
    private init (dict :NSDictionary) {
        
     var array=[Djelatnik.djk_id,Djelatnik.email,Djelatnik.error,Djelatnik.ime,Djelatnik.prezime,Djelatnik.rm]
        var good = true
        for item in array {
            var result: AnyObject? = dict[item]
            if result == nil {
                good = false
            }
        }
        if (good){
            for item in array{
                self.dictionary[item] = dict[item]
            }
        }

    }
    
    class func initWithDict(dict: NSDictionary)-> Djelatnik{
        
        Djelatnik.data = Djelatnik(dict: dict)
        
        return Djelatnik.data
    }
}

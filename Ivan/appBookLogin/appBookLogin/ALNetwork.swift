//
//  ALNetwork.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import AFNetworking
///Classa koja je koristena za spajanje na servise putem HTTP POST metode. Moguce nadograditi lako i za GET metodu.
class ALNetwork{
    ///Adresa na koju se spajamo.
    var url:String
    ///Manager koji se brine o konekciji.
    let manager:AFHTTPRequestOperationManager
    ///Parametri predani prilikom zahtjeva.
    var params=[:]
    
    ///Construktor za inicijalizaciju varijabla.
    init(){
        url=""
        manager=AFHTTPRequestOperationManager()
        manager.responseSerializer.acceptableContentTypes.insert("text/html")
    }
    
    ///Metoda koja poziva HTTP POST metodu sa vlastitim parametrima.
    func POST(){
        self.manager.POST(url, parameters: params, success:onSucces , failure: onFailure)
    }
    
    /// Metoda pozvana u slucaju uspjeha HTTP metode.
    /// :param: operation  operacija koja je predana preko http poziva.
    /// :param: response Odgovor na HTTP poziv.
    func onSucces(operation:AFHTTPRequestOperation!, response:AnyObject!)->Void{
        print(response)
    }
    /** Metoda pozvana prilikom neuspjeha poziva HTTP metode.
    :param: operation operacija za zahtjev.
    :param: error greska koja opisuje razlog neuspjeha.
    */
    func onFailure(operation:AFHTTPRequestOperation!,error:NSError!)->Void{
        print(error)
        
    }
}



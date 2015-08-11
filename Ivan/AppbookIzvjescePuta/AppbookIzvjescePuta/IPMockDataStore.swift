//
//  IPMockDataStore.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
///Razred koji se koristi za simuliranje dohvata podataka.
class IPMockDataStore:IPDataStore{
    ///Podatak kojeg vraćamo u slucaju dohvata.
    var data :ViewText!
    ///Singleton instanca razreda.
    static var instance = IPMockDataStore()
    
    ///Inicijalizira sa defaultnim podatcima ukoliko se ne zadaju drugi.
    init( viewTitle :String = "Izvešće sa puta" , firstTitle:String = "Svrha putovanja" ,textField :String = "",secondTitle:String = "Izvješće sa puta",firstSubtitle:String = "Kupanje"){
        super.init()
        self.data = ViewText(viewTitle: viewTitle, textField: textField , firstTitle: firstTitle, secondTitle: secondTitle, firstSubtitle: firstSubtitle)
    }
    
    ///Dohvat podataka
    ///:returns: podatak spremljen unutar singletona tipa ViewText.
    func giffData()->ViewText{
        return IPMockDataStore.instance.data
    }
    
}

//
//  IPDataViewInteractor.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 10/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
///Interactor za pogled izvjesca putovanja.
class IPDataViewInteractor :IPInteractor{
    
    ///Dohvat podataka iz Data Storea.
    ///:returns: podatak iz data storea.
    func getData() -> AnyObject {
        return IPMockDataStore.instance.giffData()
    }
    
}
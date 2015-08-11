//
//  IPBasicView.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit
///Razred koji spaja black nav bar i IPView protocol.
class IPBasicView : BaseBlackNavBarContoller , IPView{
    ///Promatraci
    private var observers = [Presenter]()
    
    ///Dodavanje promatraca.
    ///:param: obs promatrac kojeg dodajemo.
    func addObserver(obs: Presenter) {
        observers.append(obs)
    }
    
    ///Metoda koja obavjestava promatrace o promijeni.
    func notify(){
        for obs in observers{
            obs.notify()
        }
    }
    
    ///Metoda koja se pozove prilikom pokretanja pogleda.
    override func viewDidLoad() {
        super.viewDidLoad()
        for obs in observers{
            obs.viewDidLoad()
        }
    }
    
    ///Metoda koja oznacuje pritisak neke tipke.
    ///:param: objec oznaka tipke koja je pritisnuta.
    func buttonPressed(objec : AnyObject?){
        for obs in observers{
            obs.buttonPressed(objec)
        }
    }
    
    ///Metoda koja je pozvana prilikom pritiska tipke.
    func buttonPressed(){
        for obs in observers{
            obs.buttonPressed(nil)
        }
    }
    
}

//
//  Pressenter.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit
///Protocol prezentera.
protocol Presenter{
    ///Metoda pozvana prilikom viewDidLoad() pogleda.
    func viewDidLoad()
    ///Metoda pozvana prilikom pritiska neke tipke.
    func buttonPressed(buttonId:AnyObject?)
    ///Metoda koja sluzi za najapstraktnije informiranje da se desila neka promjena na pogledu.
    func notify()
    ///Inicijalizacija presentera sa pogledom.
    ///:param: view pogled s kojim inicijaliziramo presenter.
    ///:returns: presenter koji smo upravo inicijalizirali.
    static func initWithView(view :IPView)-> Presenter
    ///Iniijalizacija presentera sa pogledom i podatkom.
    ///:param: view pogled s kojim inicijaliziramo presenter.
    ///:param: data podatak s kojim inicijaliziramo presenter.
    ///:returns: presenter kojeg smo inicijalizirali.
    static func initWithViewAndData(view: IPView, data: AnyObject)->Presenter
    
}

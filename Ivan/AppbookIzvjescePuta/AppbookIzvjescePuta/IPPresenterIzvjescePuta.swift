//
//  IPPresenterIzvjescePuta.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
///Razred presentera izvjesca puta.
class IPPresenterIzvjescePuta : Presenter{
    ///Pogled na koji je preplaćen kao slušać.
    var view:IPView!
    ///Interactor kojeg koristi za dohvatu i obradu podataka.
    var interactor: IPInteractor
    
    ///Inicijalizacija.
    init(){
        self.interactor=IPDataViewInteractor()
    }
    
    ///Metoda pozvana prilikom viewDidLoad()
    func viewDidLoad(){

    }
     ///Metoda pozvana prilikom pritiska tipke.
    ///:params: buttondId id tipke koja je pritisnuta.
    func buttonPressed(buttonId:AnyObject?){
        
    }
    
    ///Apstraktna metoda koja oznacuje promijenu na pogledu.
    func notify(){
        
    }
    
    ///Staticna metoda koja sluzi punjenje pogleda sa podatcima.
    ///:param: view pogled kojeg punimo sa podatcima.
    ///:param: data podatci s kojim punimo.
    private static func filWithData(view :IPView, data:AnyObject){
        let dataView = view as? IPDataView
        if(dataView != nil){
            dataView?.fillWithData(data)
        }
    }
    
    ///Staticna metoda za izradu presentera sa odredjenim pogledom.
    ///:param: view pogled sa kojim inicijaliziramo presenter.
    ///:returns: izradjeni presenter.
    static func initWithView(view :IPView)-> Presenter{
        let presenter = IPPresenterIzvjescePuta()
        presenter.view = view
        view.addObserver(presenter)
        self.filWithData(view, data: presenter.interactor.getData())
        
        return presenter
    }
    
    ///Staticna metoda za izradu presentera sa odredjenim pogledom i podatcima.
    ///:param: view pogled s kojim inicijaliziramo presenter.
    ///:param: data
    static func initWithViewAndData(view :IPView, data:AnyObject)->Presenter{
        let presenter = IPPresenterIzvjescePuta()
        presenter.view=view
        view.addObserver(presenter)
        self.filWithData(view, data: data)
        
        return presenter
    }
        
}

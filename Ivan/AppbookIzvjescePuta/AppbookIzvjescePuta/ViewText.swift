//
//  ViewText.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation

///Entity za pogled kojim se definira naslov pogleda, dva naslova , jedan podnaslov, te text unutar text fielda.
class ViewText{
    ///Naslov pogleda.
    var viewTitle:String
    ///Text unutar text fielda.
    var textField : String
    ///Text prvog naslova.
    var firstTitle : String
    ///Text drugog naslova.
    var secondTitle : String
    ///Text prvog podnaslova.
    var firstSubtitle : String
    
    
    ///Obican inicijalizator, inicijalizira sve sa ""
    init(){
        viewTitle = ""
        textField = ""
        firstTitle = ""
        firstSubtitle = ""
        secondTitle = ""
    }
    
    /** Inicijalizator koji podesi sve elemente.
    :param: viewTitle naslov pogleda.
    :param: textField text unutar text fielda.
    :param: firstTitle text prvog naslova.
    :param: secondTitle text drugog naslova.
    :param: firstSubtitle text prvog podnaslova.
    */
    init(viewTitle:String ,textField:String,firstTitle:String,secondTitle:String,firstSubtitle:String) {
        self.textField = textField
        self.firstSubtitle = firstSubtitle
        self.firstTitle = firstTitle
        self.secondTitle = secondTitle
        self.viewTitle = viewTitle
    }
}

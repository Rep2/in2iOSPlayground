//
//  IPView.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit
///Protocol za pogled.
protocol IPView{
    ///Dodavanje promatraca na pogled.
    func addObserver(obs:Presenter)
    
    ///Obavjestavanje pogleda o promijeni.
    func notify()
}
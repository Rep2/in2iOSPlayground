//
//  IPPlaceholderPresenter.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 10/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
///Razred koji sluzi samo za prilaz na sljedeci prozor.
class IPPlaceholderPresenter : Presenter{
    
    
    
    
    func buttonPressed(buttonId: AnyObject?) {
        IPWireframe.instance.pushViewWithNameAndPressenter("izvjescePuta", pressenter: IPPresenterIzvjescePuta.self)
        
    }
    
    func viewDidLoad() {
        
    }
    func notify() {
        
    }
    
    static func initWithView(view: IPView) -> Presenter {
        let presenter = IPPlaceholderPresenter()
        view.addObserver(presenter)
        return presenter
    }
    
    static func initWithViewAndData(view: IPView, data: AnyObject) -> Presenter {
        return IPPlaceholderPresenter.initWithView(view)
        
    }
    
    
    
}

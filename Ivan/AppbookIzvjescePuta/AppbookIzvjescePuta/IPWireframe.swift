//
//  IPWireframe.swift
//  AppbookIzvjescePuta
//
//  Created by IN2 MacbookPro on 07/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit


class IPWireframe{
    static  var instance: IPWireframe!
    
    init(navigationController:UINavigationController){
        self.navigationController = navigationController
    }
    
    static func initWithNavigationController(navigationController:UINavigationController) -> IPWireframe{
        instance = IPWireframe(navigationController: navigationController)
        return instance
    }
    
    // MARK: Properties
    
    /// Nav controller used in whole PN app section
    let navigationController:UINavigationController
    
    /// Dictionary containing all initialized view controllers
    var controllerDictionary = [String:UIViewController]()
    
    func pushViewWithName(name:String) -> Void{
        
        if controllerDictionary[name] == nil{
            controllerDictionary[name] = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(name) as? UIViewController
        }
        
        navigationController.pushViewController(controllerDictionary[name]!, animated: true)
    }
    
    func pushViewWithController(controller:UIViewController) -> Void{
        navigationController.pushViewController(controller, animated: true)
    }
    ///Metoda koja stavlja novi pogled sa svojim presenterom , izradjeni pogled se doda u rijecnik.
    ///Ukoliko je pogled vec bio pozvan, tada se poziva i dodaje novi observer.
    ///:param: name ime pogleda.
    ///:param: pressenter tip presentera.
    func pushViewWithNameAndPressenter<T where T : Presenter>(name :String, pressenter:T.Type){
        if let view = controllerDictionary[name]{
            if let ipView = view as? IPView{
                pressenter.initWithView(ipView)
            }
            navigationController.pushViewController(view, animated: true)
        }else{
            if let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(name) as? UIViewController {
                
                if let ipView = view as? IPView{
                    pressenter.initWithView(ipView)
                }
                navigationController.pushViewController(view, animated: true)
            }else{
                ///MARK prilikom publishanja zamijeniti sa odgovarajucim alertom.
                print("no such view")
            }
        }    }
    
    ///Metoda koja stavlja novi pogled sa svojim presenterom te podatcima, izradjeni pogled se doda u rijecnik.
    ///Ukoliko je pogled vec bio pozvan, tada se poziva i dodaje novi observer.
    ///:param: name ime pogleda.
    ///:param: pressenter tip presentera.
    ///:param: data podatci za pogled odnosno presenter.
    func pushViewWithNameAndPressenterAndData<T where T : Presenter>(name :String, pressenter:T.Type,data:AnyObject){
        if let view = controllerDictionary[name]{
            if let ipView = view as? IPView{
                pressenter.initWithViewAndData(ipView, data: data)
            }
            navigationController.pushViewController(view, animated: true)
        }else{
            if let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(name) as? UIViewController {
        
                if let ipView = view as? IPView{
                    pressenter.initWithViewAndData(ipView, data: data)
                }
                navigationController.pushViewController(view, animated: true)
            }else{
                ///MARK prilikom publishanja zamijeniti sa odgovarajucim alertom.
                print("no such view")
            }
        }
    }


    func popOne(){
        navigationController.popViewControllerAnimated(true)
    }
    
    func pushPocetna(){
            self.pushViewWithNameAndPressenter("placeholder", pressenter: IPPlaceholderPresenter.self)
    }
    
    
    func getView(name:String) -> UIViewController{
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(name) as! UIViewController
    }
    
    func getViewWithName(name:String, title:String, imageName:String) -> UIViewController{
        
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(name) as! UIViewController
        let tabBarItem = UITabBarItem(title: title, image: UIImage(named:imageName), tag: 0) as UITabBarItem
        controller.tabBarItem = tabBarItem
        
        return controller
    }
}
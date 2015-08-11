//
//  RSWireframe.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 03/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import UIKit
///Razred koji se brine za prijelaz izmedju pojedinih pogleda.
class RSWireframe{
    /// Singleton instanca.
    static var instance :RSWireframe!
    static private var wireDict = [String:UIViewController]()
    private static var pocetna = "prijavaV2"
    /// Navigation controller koji je korišten za navigaciju.
    let navigationController:UINavigationController!

    ///Inicijalizacija varijabla.
    ///:params: navController controller koji će se koristiti za navigaciju.
    private init(navController:UINavigationController){
        self.navigationController=navController
        
    }
    
    ///Inicijalizacija sa pocetnim pogledom.
    ///:params: navController controller koji će se koristiti za navigaciju.
    static func initWithNavController (navController : UINavigationController)->RSWireframe{
        self.instance=RSWireframe(navController: navController)
        return self.instance
    }
    
    ///Dijeljenje singleton instance.
    ///:returns: singleton instancu Wireframea.
    static func sharedInstance() -> RSWireframe {
        return self.instance
    }
    
    ///Pomakne se jedan pogled unutrag.
    func popOne(){
        self.navigationController.popViewControllerAnimated(true)
    }
    
    ///Stavi se novi pogled na stog navigation controllera.
    func pushViewWithName(name:String){
        var view:UIViewController
        let viewToCheck = RSWireframe.wireDict[name]
        if(viewToCheck == nil){
            view=UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(name) as! UIViewController
            RSWireframe.wireDict[name]=view
        }else{
            view = RSWireframe.wireDict[name]!
        }
        self.navigationController.pushViewController(view, animated: true)
        
    }
    
    ///Stavi se pocetni pogled na navigation controller.
    func pushPocetna(){
        let view = UIStoryboard(name : "Main",bundle: nil).instantiateViewControllerWithIdentifier(RSWireframe.pocetna) as!UIViewController
        self.navigationController.pushViewController(view, animated: true)
       // RSWireframe.wireDict[RSWireframe.pocetna]=view
    }
    
}
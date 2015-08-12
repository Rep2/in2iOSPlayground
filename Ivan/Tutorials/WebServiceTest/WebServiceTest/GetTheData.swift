//
//  GetTheData.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 30/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
///Class for parsing the data as a JSON.
class GetTheData:Networking{
    ///The handler which is called when the connection succedes.
    var observer:(NSArray)->Void
    
    /**
    Inits the class.
    :param: handler The function that is called when the connection succedes.
    */
    init(observer:(NSArray)->Void){
        self.observer=observer
        super.init()
        self.url="https://appbook.in2.hr/ords/appbookrest/wall/v1/post/1/22"
        self.method=Method.GET
        
    }
    
    /**
    Overrides the onSucces which is called when the connection succedes, it parsed the data as a JSON.
    :param: data The data from the connection.
    */
    override func onSucces(data: AnyObject) {
            var JSONdata=data as! NSDictionary
            let array=JSONdata["data"] as! NSArray
            var retData=array
            observer(array)
            print("done")

    }
    

    
    
}
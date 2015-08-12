//
//  NCPosts.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 31/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import AFNetworking
///Class that is used for getting the json data as an array from the server.
class NCPosts {
    ///The manager that is used for communication.
    let manager:AFHTTPRequestOperationManager
    
    ///Inits the class.
    init(){
        manager=AFHTTPRequestOperationManager()
        manager.responseSerializer.acceptableContentTypes.insert("text/html")
    }
    
    /** The function that gets the data from the service.
    :param: dataObserver The observer which handles the data.
    */
    func getData(dataObserver:(NSArray)->Void){
        manager.GET("https://appbook.in2.hr/ords/appbookrest/wall/v1/post/1/22", parameters: nil,
            success: {operation, responceObject in
                    dataObserver(responceObject?.objectForKey("data") as! NSArray)
            }
            , failure: {operation, error in
                println(error.localizedDescription)
        })
    }
}

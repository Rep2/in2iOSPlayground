//
//  WebServiceHandler.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 27/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation

/**
The class whic handles the request to the server via URL calls
*/
class WebServiceHandler{
    /** The url string that we later gonna parse into a real url.*/
    static let urlString="https://appbook.in2.hr/ords/appbookrest/wall/v1/post/1/22"
/**
Gets the data from the 'urlString' and parses it as a JSON.

:param: 'callBack' the callback function that procces the data given from the request.

:returns: Void
*/
    class func getData(callback:(NSArray, NSError?)->Void)->Void{
    
        /// the url that we gona call
        let url=NSURL(string: urlString)
        /// the request from the url
        let request=NSURLRequest(URL: url!)
        /// the error if there is any
        var retError:String?
        /// the data which we get from the request
        var retData:NSArray!=[]
        
        ///send the request
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(), completionHandler:{
            (response:NSURLResponse!, data: NSData!, downloadError: NSError!) -> Void in
            ///error checking
            if let error=downloadError{
                
                retError=toString(error)
                print("Error in download "+retError!)
                callback([],downloadError)
            }else{
                ///parsing it as a JSON
                var parsingError:NSError?=nil
                let parsedResult: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: &parsingError) as? NSDictionary
                
                if(parsingError == nil){
                    let array=parsedResult["data"] as! NSArray
                    retData=array
                    callback(retData,nil)
                    print("done")
                }else{
                    callback([],parsingError)
                }
         
            }
        })
    
 
    }
}

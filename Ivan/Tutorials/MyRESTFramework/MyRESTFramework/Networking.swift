//
//  Networking.swift
//  MyRESTFramework
//
//  Created by IN2 MacbookPro on 30/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
/// Class that handles the networking requests.
public class Networking{
    ///The request which will be used for the connection.
    private var request:NSMutableURLRequest
    ///The url adress for the request.
    public var url:String
    ///The session.
    private var session=NSURLSession.sharedSession()
    ///The parameters of the request, if any are there.
    var params:NSDictionary
    ///The method , GET/POST
    var method:Method
    
    
    init(){
        self.url="https://www.google.hr/"
        method=Method.GET
        params=NSDictionary()
        request=NSMutableURLRequest()
    }
    
    /**
    Determines what will hapen if the connection fails.
    :param: error The error which is given from the connect method.
    */
    func onFailure(error:NSError){
        println(NSError)
    }
    
    /**
    Determines what will hapen if the connection succides.
    :param: data The data which is given from the connect method.
    */
    func onSucces(data:AnyObject){
        println(toString(data))
    }
    
    /**
    Function that connects to the given url, and runs a handler given by the user.
    :param: url The adress that we connect to.
    :param: method The method which is given to the request.
    :param: params The parameters which are given through the request, if there are any.
    :param: compHandler The function which handles the data recieved through the conections.
    
    */
    public func connect(){
        switch method{
            
        case Method.GET:
            var urlWithParams:String
            if ( params.count>0){
                urlWithParams=url+"?"+params.stringFromHttpParameters()
            }else{
                urlWithParams=url
            }
            var transUrl=NSURL(string: urlWithParams)
            request=NSMutableURLRequest(URL:transUrl!)
            request.HTTPMethod="GET"
            
            
        case Method.POST:
            var transUrl=NSURL(string: url)!
            request=NSMutableURLRequest(URL:transUrl)
            request.HTTPMethod="POST"
            if(params.count>0){
            request.HTTPBody=(params.stringFromHttpParameters()).dataUsingEncoding(NSUTF8StringEncoding)
            }
            
        }

      
        let task = session.dataTaskWithRequest(request,completionHandler:{
            ( data: NSData!,response:NSURLResponse!, downloadError: NSError!) -> Void in
            if var error=downloadError{
               self.onFailure(error)
            }else{
                var parsingError:NSError?=nil
                let parsedResult: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: &parsingError)
                
                if(parsingError == nil){
                    self.onSucces(parsedResult)
                }
                else{
                    self.onFailure(parsingError!)
                }
                
            }
        })
        task.resume()
        
    }
}



extension String {
    
    /// Percent escape value to be added to a URL query value as specified in RFC 3986
    ///
    /// This percent-escapes all characters besize the alphanumeric character set and "-", ".", "_", and "~".
    ///
    /// http://www.ietf.org/rfc/rfc3986.txt
    ///
    /// :returns: Return precent escaped string.
    
    func stringByAddingPercentEncodingForURLQueryValue() -> String? {
        let characterSet = NSMutableCharacterSet.alphanumericCharacterSet()
        characterSet.addCharactersInString("-._~")
        
        return self.stringByAddingPercentEncodingWithAllowedCharacters(characterSet)
    }
    
}
/// Build string representation of HTTP parameter dictionary of keys and objects
///
/// This percent escapes in compliance with RFC 3986
///
/// http://www.ietf.org/rfc/rfc3986.txt
///
/// :returns: String representation in the form of key1=value1&key2=value2 where the keys and values are percent escaped
extension NSDictionary{
    func stringFromHttpParameters() -> String {
        let parameterArray = map(self) { (key, value) -> String in
            let percentEscapedKey = (key as! String).stringByAddingPercentEncodingForURLQueryValue()!
            let percentEscapedValue = (value as! String).stringByAddingPercentEncodingForURLQueryValue()!
            return "\(percentEscapedKey)=\(percentEscapedValue)"
        }
        
        return join("&", parameterArray)
    }
}
//
//  DPTableData.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 27/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
/**
A class which stores the info about the users and they'r posts.
*/
class DPTableData {
    /** The number of comments*/
    var comCount:Int?
    /** the array of comments*/
    var comments:NSArray
    /** the username */
    var username:String?
    /** the title */
    var title:String?
    /** the short text, which desribes about what it is.*/
    var short:String?
    
/**
Inits the parameters from a specific NSDictionary.

:param: data : NSDictionary the dictionary from which we get the data.

*/
    init(data:NSDictionary){
        title=data["naslov"] as? String
        comments=data["komentari"] as!  NSArray
        comCount=comments.count
        username=data["djelatnik"] as? String
        short=data["skraceno"] as? String
        
    }
    
}

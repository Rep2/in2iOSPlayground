//
//  UserInfo.swift
//  PracticeTest
//
//  Created by IN2 MacbookPro on 22/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
class UserInfo{
    var username:String!
    var password:String!
    var name:String!
    var surname:String!
    var street:String!
    var city:String!
    var age:Int!
    var gender:Int=0
    
    init(username:String ,password :String){
        self.username=username
        self.password=password
        city=""
        street=""
        surname=""
        name=""
        age=0
    }
}

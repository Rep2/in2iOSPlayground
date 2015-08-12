//
//  UserDB.swift
//  PracticeTest
//
//  Created by IN2 MacbookPro on 22/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation

class UserDB{
    private static var db:UserDB!
    private var users=[String:UserInfo]()
    private init (){
        users=[String:UserInfo]()
    }
    class func getDB()->UserDB{
        self.db = (self.db ?? UserDB())
        return self.db
    }
    func checkForUsername(username:String)->Bool{
        var usernames=users.keys
        if (usernames.isEmpty){
            return false
        }
        
        if contains(usernames, username){
            return true
        }
        return false
    }
    func addUser(userForBase:UserInfo){
        users[userForBase.username]=userForBase
    }
    func getUser(username:String)->UserInfo?{
        if(checkForUsername(username)){
            return users[username]
        }
        return nil
    }
    func updateUser(updatedUser:UserInfo){
        users.updateValue(updatedUser, forKey: updatedUser.username)
    }
    func checkPassword(username:String,password:String)->Bool{
        if(users[username]?.password==password){
            return true
        }
        return false
    }
}
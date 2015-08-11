//
//  KeyChain.swift
//  appBookLogin
//
//  Created by IN2 MacbookPro on 04/08/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import Foundation
import Security
///Razred za spremanje objekta / NSDictionary na keychain.
class KeyChain:NSObject{
    ///Parametar za korisnika
    static let userAccount = "authenticatedUser"
    ///Parametar za grupu
    static let accessGroup = "appBook"
    /// Parametri  za sigurnost
    static let kSecClassValue = NSString(format: kSecClass)
    static let kSecAttrAccountValue = NSString(format: kSecAttrAccount)
    static let kSecValueDataValue = NSString(format: kSecValueData)
    static let kSecClassGenericPasswordValue = NSString(format: kSecClassGenericPassword)
    static let kSecAttrServiceValue = NSString(format:kSecAttrService)
    static let kSecMatchLimitValue = NSString(format:kSecMatchLimit)
    static let kSecReturnDataValue = NSString(format:kSecReturnData)
    static let kSecMatchLimitOneValue = NSString(format:kSecMatchLimitOne)
        
    /** Metoda za spremanje podataka pod nekom oznakom.
    :params: serviceIdentifier oznaka servica pod kojeg zelimo spremiti token.
    :params: token podatci koje zelimo spremiti.
    */
    class func saveToken(serviceIdentifier:NSString, token: NSDictionary) {
        self.save(serviceIdentifier, data: token)
    }
    /** Metoda za dohvat podataka iz keychaina.
    :params: serviceIdentifier ime tokena kojeg želimo dohvatit.
    :returns: token koji je reprezentiran kao NSDictionary, ukoliko ne postoji takav service identifier u keychainu tada vraća nil.
    */
    class func loadToken(serviceIdentifier:NSString) -> NSDictionary? {
        var token = self.load(serviceIdentifier)
        
        return token
    }
    
    class func deleteToken(service:NSString){
        var userDict=loadToken(service)
        if(userDict != nil){
            var dataFromDict: NSData = NSKeyedArchiver.archivedDataWithRootObject(userDict!)
        
            var keychainQuery: NSMutableDictionary = NSMutableDictionary(objects: [kSecClassGenericPasswordValue, service, userAccount, dataFromDict], forKeys: [kSecClassValue, kSecAttrServiceValue, kSecAttrAccountValue, kSecValueDataValue])
            SecItemDelete(keychainQuery)
        }
    }
        
    /**
    * Internal methods for querying the keychain.
    */
    private class func save(service: NSString, data: NSDictionary) {
        var dataFromDict: NSData = NSKeyedArchiver.archivedDataWithRootObject(data)
            
        // Instantiate a new default keychain query
        var keychainQuery: NSMutableDictionary = NSMutableDictionary(objects: [kSecClassGenericPasswordValue, service, userAccount, dataFromDict], forKeys: [kSecClassValue, kSecAttrServiceValue, kSecAttrAccountValue, kSecValueDataValue])
            
        // Delete any existing items
        SecItemDelete(keychainQuery as CFDictionaryRef)
        
        // Add the new keychain item
        var status: OSStatus = SecItemAdd(keychainQuery as CFDictionaryRef, nil)
    }
     ///Interna metoda za dohvat podataka.
    private class func load(service: NSString) -> NSDictionary? {
        // Instantiate a new default keychain query
        // Tell the query to return a result
        // Limit our results to one item
        var keychainQuery: NSMutableDictionary = NSMutableDictionary(objects: [kSecClassGenericPasswordValue, service, userAccount, kCFBooleanTrue, kSecMatchLimitOneValue], forKeys: [kSecClassValue, kSecAttrServiceValue, kSecAttrAccountValue, kSecReturnDataValue, kSecMatchLimitValue])
    
        var dataTypeRef :Unmanaged<AnyObject>?
            
        // Search for the keychain items
        let status: OSStatus = SecItemCopyMatching(keychainQuery, &dataTypeRef)
            
        let opaque = dataTypeRef?.toOpaque()
            
        var contentsOfKeychain: NSDictionary?
            
        if let op = opaque {
            let retrievedData = Unmanaged<NSData>.fromOpaque(op).takeUnretainedValue()
                
            // Convert the data retrieved from the keychain into a string
            contentsOfKeychain = NSKeyedUnarchiver.unarchiveObjectWithData(retrievedData) as? NSDictionary
        } else {
            println("Nothing was retrieved from the keychain. Status code \(status)")
        }
            
        return contentsOfKeychain
    }
    
}

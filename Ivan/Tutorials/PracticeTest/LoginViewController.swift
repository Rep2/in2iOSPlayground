//
//  LoginViewController.swift
//  PracticeTest
//
//  Created by IN2 MacbookPro on 22/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//
import UIKit

class LoginViewController: UIViewController{
    
    @IBOutlet weak var ErrorMessage: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    weak var db:UserDB!
    weak var user:UserInfo?
    override func viewDidLoad() {
        super.viewDidLoad()
        db=UserDB.getDB()
        ErrorMessage.hidden=true
        loginButton.layer.cornerRadius=5
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginPressed(sender: UIButton) {
        ErrorMessage.hidden=true
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        if(usernameTextField.text.isEmpty){
            ErrorMessage.text="You have to input a username."
            ErrorMessage.hidden=false
            return
        }else{
            if(passwordTextField.text.isEmpty){
                ErrorMessage.text="You did not write a password"
                ErrorMessage.hidden=false
                return
            }
        }
        var username=usernameTextField.text
        var password=passwordTextField.text
        if(db.checkForUsername(username)){
            if(db.checkPassword(username, password:password)){
            login(db.getUser(username)!)
            }else{
                ErrorMessage.text="Wrong username and password combination"
                ErrorMessage.hidden=false
            }
        }else{
            //1. Create the alert controller.
            var alert = UIAlertController(title: "new User", message: "Re-enter password", preferredStyle: .Alert)
            
            //2. Add the text field. You can configure it however you need.
            alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
                textField.text = ""
                textField.secureTextEntry = true
            })
            var reEnteredPassword:String?
            //3. Grab the value from the text field, and print it when the user clicks OK.
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                let textField = alert.textFields![0] as! UITextField
                
                reEnteredPassword=textField.text
                if(reEnteredPassword==password){
                    var newUser=UserInfo(username: username, password: password)
                    self.db.addUser(newUser)
                    self.login(self.db.getUser(username)!)
                }else{
                    self.ErrorMessage.text="Passwords do not match"
                    self.ErrorMessage.hidden=false
                }
            }))
            
            //4. Present the alert.
            self.presentViewController(alert, animated: true, completion: nil)

        }
        
    
    }
    private func login(user:UserInfo){
        self.user=user
        passwordTextField.text=""
        performSegueWithIdentifier("signIn", sender: nil)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "signIn") {
            
            
            let secondViewController = segue.destinationViewController as! InfoViewController
            secondViewController.user=self.user
   
        }
    }
   
}
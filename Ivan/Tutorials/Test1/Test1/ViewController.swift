//
//  ViewController.swift
//  Test1
//
//  Created by IN2 MacbookPro on 20/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var FirstField: UITextField!
    @IBOutlet weak var SecondField: UITextField!
    var sentence: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius=10.0
        button.layer.borderWidth=2
        button.layer.borderColor = UIColor.blueColor().CGColor
  
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Combining(sender: AnyObject) {
        sentence=SecondField.text
       /*var alert = UIAlertController(title: "Sentence", message: sentence, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)*/
        
        
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier=="SentenceCombined"){
            let VC=segue.destinationViewController as! SentenceViewControler
            VC.sentence=self.sentence
            var cnt: Int?
            cnt = FirstField.text.toInt()
            
            if let a = FirstField.text.toInt(){
                VC.number = cnt
            } else {
                VC.number = 0
            }
            
        }
        
    }


}


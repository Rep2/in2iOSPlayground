//
//  InfoViewControler.swift
//  PracticeTest
//
//  Created by IN2 MacbookPro on 22/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    weak var db=UserDB.getDB()
    var count=0
    weak var user:UserInfo?
    
    @IBOutlet weak var genderCell: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    var steperCell:SteperTableViewCell!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var AgeLabel: UILabel!
    var width=[CGFloat]()
    var cells=[UsernameTableViewCell]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title=user!.name+" "+user!.surname
        var nib=UINib(nibName: "UserInfoCell", bundle: nil)
        var nibSteper=UINib(nibName: "SteperCell", bundle: nil)
        var nibGender=UINib(nibName: "GenderCell", bundle: nil)
        var userAge=user?.age!

        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
 
        tableView!.registerNib(nib, forCellReuseIdentifier: "usernameCell")
        tableView!.registerNib(nibSteper, forCellReuseIdentifier: "steperCell")
        tableView!.registerNib(nibGender, forCellReuseIdentifier: "genderCell")
        for cell in cells{
            width.append(cell.textInfo.frame.width)
        }
        sort(&width)
        for cell in cells{
            cell.frame=CGRect(x: cell.frame.origin.x , y: cell.frame.origin.y , width: width[0] , height: cell.frame.height)

            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  return 0
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
       return UITableViewCell()
    }
    
}
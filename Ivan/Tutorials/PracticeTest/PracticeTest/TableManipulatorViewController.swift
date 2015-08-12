//
//  TableManipulatorViewController.swift
//  PracticeTest
//
//  Created by IN2 MacbookPro on 24/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class TableManipulatorViewController: InfoViewController {


    
 func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
     func steperChanged(sender :UIStepper!){
        steperCell.label.text="Age: "+toString(Int(sender.value))
        user?.age=Int(sender.value)
        
        
        //return cell
    }
    
    @IBAction func genderChanged(sender: UISegmentedControl) {
        user?.gender=sender.selectedSegmentIndex
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0{
            return 4
        }else{
            return 2
        }
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        if(count==4){
            var cell=tableView.dequeueReusableCellWithIdentifier("steperCell", forIndexPath: indexPath) as! SteperTableViewCell
            var userAge=user?.age!
            cell.layer.cornerRadius=5
            cell.steper.value=Double(userAge!)
            cell.steper.minimumValue=0
            cell.steper.maximumValue=120
            cell.label.text="Age: "+toString(Int(cell.steper.value))
            
            cell.steper.addTarget(self, action: "steperChanged:", forControlEvents: .ValueChanged)
            count++
            steperCell=cell
            return cell
        }else if(count==5){
            
            var cell=tableView.dequeueReusableCellWithIdentifier("genderCell", forIndexPath: indexPath) as! GenderTableViewCell
            
            var genderIndex=user?.gender
            cell.gender.selectedSegmentIndex=genderIndex!
            cell.gender.addTarget(self, action: "genderChanged:", forControlEvents:UIControlEvents.ValueChanged)
            return cell
            
            
            
        }else{
            var cell = tableView.dequeueReusableCellWithIdentifier("usernameCell", forIndexPath: indexPath) as! UsernameTableViewCell
            cell=cellBuilder(cell)
            return cell
        }
    }
    private func cellBuilder(cell:UsernameTableViewCell)->UsernameTableViewCell{
        switch count{
        case 0:
            count++
            
            return nameCell(cell)
            
        case 1:
            count++
            return surnameCell(cell)
            
        case 2:
            count++
            return adressCell(cell)
        case 3:
            count++
            return CityCell(cell)
            
        default:
            return cell
        }
        
        
    }
    
    private func nameCell(cell:UsernameTableViewCell)->UsernameTableViewCell{
        cell.nameLabel.text="Name:"
        cell.textInfo.text=user?.name
        cell.textInfo.addTarget(self, action: "nameFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        cells.append(cell)
        return cell
    }
    
    private func surnameCell(cell:UsernameTableViewCell)->UsernameTableViewCell{
        cell.nameLabel.text="Surname:"
        cell.textInfo.text=user?.surname
        cell.textInfo.addTarget(self, action: "surnameFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        cells.append(cell)
        return cell
    }
    /* private func ageCell(cell:UsernameTableViewCell)->UsernameTableViewCell{
    cell.nameLabel.text="Age:"
    var age:String?=toString(user?.age)
    if age=="nil"{
    age=""
    }
    cell.textInfo.text=age
    
    cell.textInfo.addTarget(self, action: "ageFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
    return cell
    }*/
    private func adressCell(cell:UsernameTableViewCell)->UsernameTableViewCell{
        cell.nameLabel.text="Adress:"
        cell.textInfo.text=user?.street
        cell.textInfo.addTarget(self, action: "adressFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        cells.append(cell)
        return cell
    }
    private func CityCell(cell:UsernameTableViewCell)->UsernameTableViewCell{
        cell.nameLabel.text="City:"
        cell.textInfo.text=user?.city
        cell.textInfo.addTarget(self, action: "cityFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        cells.append(cell)
        return cell
    }
    
    func nameFieldDidChange(textField: UITextField){
        user?.name=textField.text
        self.title=user!.name+" "+user!.surname    }
    
    func surnameFieldDidChange(textField: UITextField){
        user?.surname=textField.text
        self.title=user!.name+" "+user!.surname
    }
    func ageFieldDidChange(textField:UITextField){
        var oldValue=toString(user?.age)
        if(oldValue=="nill"){
            oldValue=""
        }
        var newValue=textField.text.toInt()
        if newValue==nil {
            textField.text=""
            
        }else{
            user?.age=newValue!
        }
        
    }
    func adressFieldDidChange(textField:UITextField){
        user?.street=textField.text
    }
    func cityFieldDidChange(textField:UITextField){
        user?.city=textField.text
    }

}

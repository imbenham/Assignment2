//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var userGreetingLabel: UILabel!
    @IBOutlet weak var synthesizedAgePermissions: UILabel!
    
       // TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    @IBAction func generalHello(sender: AnyObject) {
        greetingLabel.text = "Hello world!"
    }
    
      //   TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
  
    @IBAction func userGreeting(sender: AnyObject) {
        let name = nameField.text
        let age = ageField.text
        
        if let userAge = age.toInt(){
            userGreetingLabel.text = "Hello \(name), you are \(age) years old!"
        } else {
            userGreetingLabel.text = "Hello \(name), your age should be a number!"
        }
        
        
    }
    
    // TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    @IBAction func ageObservations1(sender: AnyObject) {
        
        let age = ageField.text as NSString
        let intValue = age.intValue
        
        if intValue >= 21 {
            println("You can drink.")
        }
        
        if intValue >= 18 {
            println("You can vote.")
        }
        
        if intValue >= 16 {
            println("You can drive.")
        }
    }
    //TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    @IBAction func ageObservations2(sender: AnyObject) {
        
        let youCan16 = "You can drive"
        let youCan18 = youCan16 + " and vote"
        let youCan21 = youCan16 + ", vote and drink (but not at the same time!)"
        
        // not handling case of non-numeric value in age field because self.userGreeting will handle error message and none of the below lines will execute 
        let age = ageField.text as NSString
        let intValue = age.intValue
        
        if intValue >= 21 {
            synthesizedAgePermissions.text = youCan21
        } else if intValue >= 18 {
            synthesizedAgePermissions.text = youCan18
        } else if intValue >= 16 {
            synthesizedAgePermissions.text = youCan16
        } else {
            synthesizedAgePermissions.text = ""
        }
        
    }
}

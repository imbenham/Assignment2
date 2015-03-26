//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var totalSum:Int = 0

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var summandField: UITextField!
    
    @IBAction func refreshSum(sender: AnyObject) {
        let myString = summandField.text as NSString
        let summand = Int((myString).intValue)
        
        // willOverflow is a function defined in FourthViewController.swift to facilitate handling of Int overflows caused by user.  checkForDecimal is defined below willOVerflow and makes sure the user has provided a whole number
        if willOverflow(totalSum, summand) {
            totalLabel.text = "Value has gotten too big!"
            summandField.text = ""
            return
        } else if checkForDecimal(myString){
            totalLabel.text = "I only add integers!"
            summandField.text = ""
            return
        }
        totalSum += summand
        
        self.updateInterface()
    }
    
    func updateInterface () {
        summandField.text = ""
        totalLabel.text = "\(totalSum)"
    }
}

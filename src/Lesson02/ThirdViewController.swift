//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var isEven = true
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    @IBOutlet var numberField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func updateIsEven(sender: AnyObject) {
        let numString = numberField.text as NSString
        let intValue = numString.intValue
        isEven = (intValue % 2 == 0) ? true : false
        
        updateInterface()
    }
    
    func updateInterface() {
        let numString = numberField.text as NSString
        messageLabel.text = isEven ? "The number \(numString) is even." : "The number \(numString) is odd."
        numberField.text = ""
    }
}

//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var totalSum:Int32 = 0

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var summandField: UITextField!
    
    @IBAction func refreshSum(sender: AnyObject) {
    let summand = (summandField.text as NSString).intValue
        totalSum += summand
        
        self.updateInterface()
    }
    
    func updateInterface () {
        summandField.text = ""
        totalLabel.text = "\(totalSum)"
    }
}

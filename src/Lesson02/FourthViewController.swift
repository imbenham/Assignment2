//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit
// global scope so other view controllers can use it
func willOverflow(firstNumber: Int, secondNumber: Int)->Bool {
    let maxValue = Int.max - firstNumber
    return secondNumber > maxValue
    
}

class FourthViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var labelText = ""
    
    
/*

    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
    
    // TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    
  
    
    class FibonacciAdder {
        func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) -> (anInt:Int?, aString:String?) {
            return fibonacciStartingAt(toPosition: indexOfFibonacciNumber)
        }
        
    
        private func fibonacciStartingAt(position: Int = 1, toPosition: Int, withCurrent: Int = 0, andPrevious: Int = 1) -> (Int?, String?) {
            
            if willOverflow(withCurrent, andPrevious) {
                return (nil, "I've bitten off more than I can chew!")
            }
            
            if position > toPosition {
                return (nil, "Give me a positive integer, please!")
            }
            if position == toPosition {
                return (withCurrent, nil)
            } else {
                return fibonacciStartingAt(position: position + 1, toPosition: toPosition, withCurrent: withCurrent + andPrevious, andPrevious: withCurrent)
            }
        }
        
    }
    
    @IBAction func getFibonacciNumberX(sender: AnyObject) {
        let indexString = numberField.text as NSString
        let index = Int(indexString.intValue)
        
        let returnTuple = FibonacciAdder().fibonacciNumberAtIndex(index)
        if let fibNumber = returnTuple.anInt {
            labelText = "\(fibNumber)"
        } else {
            labelText =  returnTuple.aString!
        }
        
        updateInterface()
    }
    
    func updateInterface() {
        messageLabel.text = labelText
        numberField.text = ""
    }
    
    
}

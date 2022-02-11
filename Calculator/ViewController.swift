//
//  ViewController.swift
//  Calculator
//
//  Created by Zhanna Rolich on 01.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    var nullLabel = false
    var pointPlace = false
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var operationName: String = ""
    
    
    @IBAction func pressButton(_ sender: UIButton) {
        
        let firstNumber = sender.configuration!.title!
        
        if nullLabel {
            displayLabel.text = displayLabel.text! + firstNumber
        } else {
            displayLabel.text = firstNumber
            nullLabel = true
        }
    }
    
    @IBAction func mathOperatorPress(_ sender: UIButton) {
        operationName = sender.configuration!.title!
        firstNumber = Double (displayLabel.text!)!
        nullLabel = false
        pointPlace = false
    }
    
    
    @IBAction func equalityButton(_ sender: UIButton) {
        
        if nullLabel {
            secondNumber = Double (displayLabel.text!)!
        }
        
        pointPlace = false
        
        switch operationName {
        case "+":
            let res: Double = firstNumber + secondNumber
            displayLabel.text = String(res)
            nullLabel = false
        case "−":
            let res: Double = firstNumber - secondNumber
            displayLabel.text = String(res)
            nullLabel = false
        case "×":
            let res: Double = firstNumber * secondNumber
            displayLabel.text = String(res)
            nullLabel = false
        case "÷":
            let res: Double = firstNumber / secondNumber
            displayLabel.text = String(res)
            nullLabel = false
        default: break
        }
    }
    
    @IBAction func squareButton(_ sender: UIButton) {
        var square: Double? = Double (displayLabel.text!)
        square = sqrt(square!)
        displayLabel.text = String(square!)
        nullLabel = false
    }
    
    @IBAction func plusMinusButton(_ sender: UIButton) {
        let plusMinus: Double? = Double (displayLabel.text!)
        displayLabel.text = String(-plusMinus!)
        nullLabel = false
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        displayLabel.text = "0"
        nullLabel = false
        pointPlace = false
        operationName = ""
    }
    
    @IBAction func pointButton(_ sender: UIButton) {
        if nullLabel && !pointPlace {
            displayLabel.text = displayLabel.text! + "."
            pointPlace = true
        } else if !nullLabel && !pointPlace {
            displayLabel.text = "0."
        }
    }
}






//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Malina Ierome on 2/7/20.
//  Copyright © 2020 Malina Ierome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //this is a "screen component"
    var sum = 0
    var leftOperand = ""
    var rightOperand = ""
    var calcOperator = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onNumberClicked(_ sender:UIButton){
        guard let number = sender.accessibilityLabel else {
            return
        }
        switch number{
        case "one":
            if calcOperator == "+" {
                rightOperand += "1"
            } else {
                leftOperand += "1"
            }
        case "two":
            if calcOperator == "+" {
                rightOperand += "2"
            } else {
                leftOperand += "2"
            }
        case "three":
            if calcOperator == "+" {
                rightOperand += "3"
            } else {
                leftOperand += "3"
            }
        case "four":
            if calcOperator == "+" {
                rightOperand += "4"
            } else {
                leftOperand += "4"
            }
        case "five":
            if calcOperator == "+" {
                rightOperand += "5"
            } else {
                leftOperand += "5"
            }
        case "six":
            if calcOperator == "+" {
                rightOperand += "6"
            } else {
                leftOperand += "6"
            }
        case "seven":
            if calcOperator == "+" {
                rightOperand += "7"
            } else {
                leftOperand += "7"
            }
        case "eight":
            if calcOperator == "+" {
                rightOperand += "8"
            } else {
                leftOperand += "8"
            }
        case "nine":
            if calcOperator == "+" {
                rightOperand += "9"
            } else {
                leftOperand += "9"
            }
        case "zero":
            if calcOperator == "+" {
                rightOperand += "0"
            } else {
                leftOperand += "0"
            }
        default:
            break
        }
        print(leftOperand, rightOperand)
    }
    @IBAction func onOperator(_ sender:UIButton){
        guard let calcOperator = sender.accessibilityLabel else {
            return
        }
        switch calcOperator {
        case "plus":
            self.calcOperator = "+"
        default:
            break
        }
    }
    @IBAction func onEqualClick(_ sender:UIButton){
        guard let left = Int(self.leftOperand), let right = Int(self.rightOperand) else{
            return
        }
        switch self.calcOperator {
        case "+":
            print(left + right)
        default:
            break
        }
    }
}


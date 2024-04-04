//
//  ViewController.swift
//  Appito
//
//  Created by Giorgi Michitashvili on 4/4/24.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.delegate = self
        textField2.delegate = self
    }
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var button: UISwitch!
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var pasuxi: UILabel!
    
    @IBAction func buttonSwitch(_ sender: Any) {
        if button.isOn {
            titleLabel.text = "უდიდესი საერთო გამყოფი"
        } else {
            titleLabel.text = "უმცირესი საერთი ჯერადი"
        }
    }
    
    
    @IBAction func buttonSummer(_ sender: Any) {
        if button.isOn {
            if let text1 = textField1.text, let text2 = textField2.text {
                if let number1 = Int(text1), let number2 = Int(text2) {
                    let result = gcd(number1, number2)
                    pasuxi.text = "პასუხი \(result)"
                    
        } else {
            if let text1 = textField1.text, let text2 = textField2.text {
                            if let number1 = Int(text1), let number2 = Int(text2) {
                                let lcmResult = lcm(number1, number2)
                                pasuxi.text = "პასუხი \(lcmResult)"
                        }
                        
                        
                        
                        
                        
                    }
                }
            }
            
            func lcm(_ a: Int, _ b: Int) -> Int {
                return (a * b) / gcd(a, b)
            }
            
            func gcd(_ a: Int, _ b: Int) -> Int {
                let r = a % b
                if r != 0 {
                    return gcd(b, r)
                } else {
                    return b
                }
            }
            
            
        }
    }
}

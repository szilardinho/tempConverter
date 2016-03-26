//
//  ConversionViewController.swift
//  tempConverter
//
//  Created by Szi Gabor on 3/17/16.
//  Copyright © 2016 nuSyntax. All rights reserved.
//

import Foundation
import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var farenheitValue: Double? {
        didSet {
            updateCelciusLabel()
        }
    }
    
    var celciusValue: Double? {
        if let value = farenheitValue {
            return (value - 32)  * (5/9)
            }
            else{
                return nil
            }
        }
    
    func updateCelciusLabel(){
        if let value = celciusValue{
            celciusLabel.text = "\(value)"
        } else {
            celciusLabel.text = "???"
        }
    }
    
    
    @IBAction func dismissKeyboard (sender: AnyObject){
        textField.resignFirstResponder()
    }
    
    @IBAction func farenheitFieldEditingChanged(textField: UITextField){
        
        if let text = textField.text, value = Double(text) {
            farenheitValue = value
            }  else {
                farenheitValue = nil
            }
        }
}

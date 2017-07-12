//
//  ViewController.swift
//  Calculator2
//
//  Created by Jeff Ripke on 7/12/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import UIKit

enum mode {
    case notSet
    case addition
    case subtraction
    case multiplication
}

class ViewController: UIViewController {
    
    var labelString = "0"
    var currentMode: mode = .notSet
    var savedNum = 0
    var lastButtonWasMode = false
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tappedNumber(num: Int) {
        if lastButtonWasMode {
            lastButtonWasMode = false
            labelString = "0"
        }
        labelString += "\(num)"
        updateText()
    }
    
    func updateText() {
        guard let displayedNumber = Int(labelString) else {
            displayLabel.text = "Int conversion failed"
            return
        }
        if currentMode == .notSet {
            savedNum = displayedNumber
        }
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        let num = NSNumber(value: displayedNumber)
        displayLabel.text = formatter.string(from: num)
    }
    
    func changedMode(newMode: mode) {
        if savedNum == 0 {
            return
        }
        currentMode = newMode
        lastButtonWasMode = true
    }
    
    
    @IBAction func zeroBtnTapped(_ sender: UIButton) {tappedNumber(num: 0)}
    @IBAction func oneBtnTapped(_ sender: UIButton) {tappedNumber(num: 1)}
    @IBAction func twoBtnTapped(_ sender: UIButton) {tappedNumber(num: 2)}
    @IBAction func threeBtnTapped(_ sender: UIButton) {tappedNumber(num: 3)}
    @IBAction func fourBtnTapped(_ sender: UIButton) {tappedNumber(num: 4)}
    @IBAction func fiveBtnTapped(_ sender: UIButton) {tappedNumber(num: 5)}
    @IBAction func sixBtnTapped(_ sender: UIButton) {tappedNumber(num: 6)}
    @IBAction func sevenBtnTapped(_ sender: UIButton) {tappedNumber(num: 7)}
    @IBAction func eightBtnTapped(_ sender: UIButton) {tappedNumber(num: 8)}
    @IBAction func nineBtnTapped(_ sender: UIButton) {tappedNumber(num: 9)}
    
    @IBAction func plusBtnTapped(_ sender: UIButton) {
        changedMode(newMode: .addition)
    }
   
    @IBAction func minusBtnTapped(_ sender: UIButton) {
        changedMode(newMode: .subtraction)
    }
    
    @IBAction func multiplyBtnTapped(_ sender: UIButton) {
        changedMode(newMode: .multiplication)
    }
    
    @IBAction func equalBtnTapped(_ sender: UIButton) {
        guard let num = Int(labelString) else {
            return
        }
        if currentMode == .notSet || lastButtonWasMode {
            return
        }
        if currentMode == .addition {
            savedNum += num
        } else if currentMode == .subtraction {
            savedNum -= num
        } else if currentMode == .multiplication {
            savedNum *= num
        }
        currentMode = .notSet
        labelString = "\(savedNum)"
        updateText()
        lastButtonWasMode = true
    }
    
    @IBAction func clearBtnTapped(_ sender: UIButton) {
        savedNum = 0
        labelString = "0"
        displayLabel.text = "0"
        lastButtonWasMode = false
    }
}

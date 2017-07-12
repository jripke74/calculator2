//
//  ViewController.swift
//  Calculator2
//
//  Created by Jeff Ripke on 7/12/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import UIKit

enum modes {
    case NOT_SET
    case ADDITION
    case SUBTRACTION
}

class ViewController: UIViewController {
    
    var labelString = "0"
    var currentMode = modes.NOT_SET
    var savedNum = 0
    var lastButtonWasMode = false
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tappedNumber(num: Int) {
        labelString += "\(num)"
        updateText()
    }
    
    func updateText() {
        guard let displayedNumber = Int(labelString) else {
            displayLabel.text = "Int conversion failed"
            return
        }
        displayLabel.text = "\(displayedNumber)"
    }
    
    func changedMode(newMode: modes) {
        
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
        
    }
   
    @IBAction func minusBtnTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func equalBtnTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func clearBtnTapped(_ sender: UIButton) {
        savedNum = 0
        labelString = "0"
        displayLabel.text = "0"
        lastButtonWasMode = false
    }
}

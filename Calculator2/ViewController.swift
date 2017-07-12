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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tappedNumber(num: Int) {
        
    }
    
    func updateText() {
        
    }
    
    func changedMode(newMode: modes) {
        
    }
}

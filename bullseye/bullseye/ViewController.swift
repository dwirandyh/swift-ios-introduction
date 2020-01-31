//
//  ViewController.swift
//  bullseye
//
//  Created by Dwi Randy Herdinanto on 31/01/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber : Int = 0
    
    @IBOutlet weak var numSlider: UISlider!
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var exactSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgain(self)
    }

    
    @IBAction func checkValue(_ sender: Any) {
        var isOnPoint = false
        
        if exactSwitch.isOn {
            if Int(numSlider.value) == randomNumber {
                isOnPoint = true
            }else{
                isOnPoint = false
            }
        }else {
            if Int(numSlider.value) >= randomNumber - 3 && Int(numSlider.value) <= randomNumber - 3 {
                isOnPoint = true
            }else{
                isOnPoint = false
            }
        }
        
        if isOnPoint {
            resultLabel.text = "You're right on the point. Bullseye!"
            resultLabel.backgroundColor = UIColor.green
        }else {
            resultLabel.text = "Whooaps you missed, try again leter"
            resultLabel.backgroundColor = UIColor.red
        }
        
        resultLabel.isHidden = false
        playAgainButton.isHidden = false
    }
    
    @IBAction func playAgain(_ sender: Any) {
        numSlider.setValue(0, animated: true)
        randomNumber = Int(arc4random_uniform(101))
        numLabel.text = "Move slider to \(randomNumber)"
        resultLabel.isHidden = true
        playAgainButton.isHidden = true
    }
    
}


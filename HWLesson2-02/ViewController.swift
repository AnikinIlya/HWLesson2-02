//
//  ViewController.swift
//  HWLesson2-02
//
//  Created by Anikin Ilya on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var greenLightLabel: UIView!
    @IBOutlet var changeLightsButton: UIButton!
    var lightLit = "red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.alpha = 0.3
        yellowLightLabel.alpha = 0.3
        greenLightLabel.alpha = 0.3
        
        redLightLabel.layer.cornerRadius = redLightLabel.frame.width/2
        yellowLightLabel.layer.cornerRadius = yellowLightLabel.frame.width/2
        greenLightLabel.layer.cornerRadius = greenLightLabel.frame.width/2
    }

    @IBAction func changeLightsButtonPressed() {
        
        changeLightsButton.setTitle("NEXT", for: .normal)
        
        switch lightLit {
        case "red":
            redLightLabel.alpha = 1
            greenLightLabel.alpha = 0.3
            lightLit = "yellow"
        case "yellow":
            yellowLightLabel.alpha = 1
            redLightLabel.alpha = 0.3
            lightLit = "green"
        default:
            greenLightLabel.alpha = 1
            yellowLightLabel.alpha = 0.3
            lightLit = "red"
        }
    }
    
}


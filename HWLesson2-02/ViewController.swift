//
//  ViewController.swift
//  HWLesson2-02
//
//  Created by Anikin Ilya on 29.07.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
// MARK: - IB Outlets
    @IBOutlet var redLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var greenLightLabel: UIView!
    
    @IBOutlet var changeLightsButton: UIButton!
    
// MARK: - Private Properties
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    private var lightLit = CurrentLight.red
    
// MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLightsButton.layer.cornerRadius = 15
        
        redLightLabel.alpha = lightIsOff
        yellowLightLabel.alpha = lightIsOff
        greenLightLabel.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redLightLabel.layer.cornerRadius = redLightLabel.frame.width/2
        yellowLightLabel.layer.cornerRadius = yellowLightLabel.frame.width/2
        greenLightLabel.layer.cornerRadius = greenLightLabel.frame.width/2
    }

// MARK: - IB Actions
    @IBAction func changeLightsButtonPressed() {
        changeLightsButton.setTitle("NEXT", for: .normal)
        
        switch lightLit {
        case .red:
            redLightLabel.alpha = lightIsOn
            greenLightLabel.alpha = lightIsOff
            lightLit = .yellow
        case .yellow:
            yellowLightLabel.alpha = lightIsOn
            redLightLabel.alpha = lightIsOff
            lightLit = .green
        case .green:
            greenLightLabel.alpha = lightIsOn
            yellowLightLabel.alpha = lightIsOff
            lightLit = .red
        }
    }
    
}


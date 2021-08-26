//
//  ViewController.swift
//  TrafficLight
//
//  Created by Maxim Dukin on 17.08.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        startButton.layer.cornerRadius = 15
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
    }
    
    @IBAction func moveLights(_ sender: UIButton) {
        if startButton.titleLabel?.text == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            currentLight = .green
        case .green:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            currentLight = .red
        }
    }
}

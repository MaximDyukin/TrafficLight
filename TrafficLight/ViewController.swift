//
//  ViewController.swift
//  TrafficLight
//
//  Created by Maxim Dukin on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = 60
        
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 60
        
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = 60
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func moveLights(_ sender: UIButton) {
        if startButton.titleLabel?.text == "START" {
            startButton.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
        } else {
            switch CGFloat(1) {
            case redLight.alpha:
                redLight.alpha = 0.3
                yellowLight.alpha = 1
            case yellowLight.alpha:
                yellowLight.alpha = 0.3
                greenLight.alpha = 1
            case greenLight.alpha:
                greenLight.alpha = 0.3
                redLight.alpha = 1
            default:
                break
            }
        }
    }
}


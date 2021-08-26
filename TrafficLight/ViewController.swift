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


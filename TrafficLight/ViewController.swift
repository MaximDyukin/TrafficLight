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
}


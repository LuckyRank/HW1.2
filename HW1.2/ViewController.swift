//
//  ViewController.swift
//  HW1.2
//
//  Created by Данил Прозоров on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = lightOff
        redView.layer.cornerRadius = redView.frame.width / 2
        
        yellowView.alpha = lightOff
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        
        greenView.alpha = lightOff
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        startButton.setTitle("Start", for: .normal)
        
    }
    
    @IBAction func buttonStarted() {
        startButton.setTitle("Next", for: .normal)
        
        if  redView.alpha != lightOn && yellowView.alpha != lightOn {
            redView.alpha = lightOn
            greenView.alpha = lightOff
        } else if redView.alpha == lightOn {
            redView.alpha = lightOff
            yellowView.alpha = lightOn
        } else if yellowView.alpha == lightOn {
            yellowView.alpha = lightOff
            greenView.alpha = lightOn
        }
    }
}




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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        redView.layer.cornerRadius = 70
        
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = 70
        
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = 70
        
        startButton.setTitle("Start", for: .normal)
        
    }
    
    @IBAction func buttonStarted() {
        startButton.setTitle("Next", for: .normal)
        
        if  redView.alpha != 1 && yellowView.alpha != 1 {
            redView.alpha = 1
            greenView.alpha = 0.3
        } else if redView.alpha != 0.3 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha != 0.3 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
    }
}




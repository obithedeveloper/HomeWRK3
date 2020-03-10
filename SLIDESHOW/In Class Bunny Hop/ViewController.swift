//
//  ViewController.swift
//  In Class Bunny Hop
//
//  Created by Obinna Ezekwesili on 2/21/19.
//  Copyright © 2020 Obinna Ezekwesili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bunnyView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    
    
    
    
    
    
    @IBAction func toggleButton(_ sender: Any) {
        
        if (bunnyView.isAnimating)
        {
            bunnyView.stopAnimating()
        } else
        {
            bunnyView.startAnimating()
        }
        
    }
    
    @IBAction func setSpeed(_ sender: Any) {        bunnyView.animationDuration=TimeInterval(3.0-speedSlider.value)
        bunnyView.startAnimating()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let hopAnimation: [UIImage] = [
            UIImage(named: "frame-1")!,
            UIImage(named: "frame-2")!,
            UIImage(named: "frame-3")!,
            UIImage(named: "frame-4")!,
            UIImage(named: "frame-5")!,
            UIImage(named: "frame-6")!,
            UIImage(named: "frame-7")!,
            UIImage(named: "frame-8")!,
            UIImage(named: "frame-9")!,
            UIImage(named: "frame-10")!,
            ]
        
        bunnyView.animationImages=hopAnimation
        bunnyView.animationDuration=1.0
        //bunnyView.startAnimating()
    }


}


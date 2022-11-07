//
//  ViewController.swift
//  diceApp
//
//  Created by Kiran Kishore on 20/07/19.
//  Copyright © 2019 CDNS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var diceNumber1  = 0
    var diceNumber2  = 0
    
    
    var imageArray = ["d1","d2","d3","d4","d5","d6"]
    
    
    @IBOutlet weak var diceFace1: UIImageView!
    
    @IBOutlet weak var diceFace2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceRoll() //Method called so that random faces are set when app starts
    }
    
    @IBAction func Roll(_ sender: UIButton) {
        
        diceRoll()
        
    }
    
    //MARK: Method to generate random number and fetch corresponding image face
    func diceRoll(){
        diceNumber1 = Int(arc4random_uniform(5))
        diceNumber2 = Int(arc4random_uniform(5))
        
        print(diceNumber1)
        diceFace1.image = UIImage(named: imageArray[diceNumber1])
        diceFace2.image = UIImage(named: imageArray[diceNumber2])
    }
    
    //MARK: Method to detect motion and call diceroll()
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceRoll()
        
    }
    
}


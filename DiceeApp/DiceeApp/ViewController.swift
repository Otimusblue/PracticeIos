//
//  ViewController.swift
//  DiceeApp
//
//  Created by Macintosh HD on 3/10/19.
//  Copyright © 2019 google. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet var diceImageView1: UIImageView!
    
    @IBOutlet var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6) + 1)
        randomDiceIndex2 = Int(arc4random_uniform(6) + 1)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1 - 1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2 - 1])
    }
    


}


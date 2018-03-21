//
//  newPopUp.swift
//  PopUp
//
//  Created by Macintosh HD on 3/21/18.
//  Copyright © 2018 google. All rights reserved.
//

import UIKit

class newPopUp : UIViewController {
    
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        myView.layer.cornerRadius = 10
        myView.layer.masksToBounds = true
    }
    
    
    @IBAction func openPop(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

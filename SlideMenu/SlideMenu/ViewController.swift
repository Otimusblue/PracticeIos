//
//  ViewController.swift
//  SlideMenu
//
//  Created by Macintosh HD on 3/20/18.
//  Copyright © 2018 google. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var tapGesture = UITapGestureRecognizer()
    
    @IBOutlet weak var mySlide: UIView!
    @IBOutlet weak var myLeading: NSLayoutConstraint!
    var currentState :Bool = true
    @objc func myviewTapped(_ sender: UITapGestureRecognizer){
        if(currentState == false){
            myLeading.constant = -182
            currentState = true
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       mySlide.layer.opacity = 1
        mySlide.layer.cornerRadius = 5
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.myviewTapped(_:)))
        mySlide.addGestureRecognizer(tapGesture)
        view.addGestureRecognizer(tapGesture)
    }
    
  
  
    @IBAction func myButton(_ sender: Any) {
        if(currentState == true){
        myLeading.constant = 0
        currentState = false
             UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
    } else {
         myLeading.constant = -182
         currentState = true
        UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        
        }
        
    }
    
}





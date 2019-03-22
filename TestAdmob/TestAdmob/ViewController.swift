//
//  ViewController.swift
//  TestAdmob
//
//  Created by Macintosh HD on 3/17/19.
//  Copyright © 2019 google. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    var interstitial: GADInterstitial!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let request = GADRequest()
        interstitial.load(request)
        self.perform(#selector(showAdMob), with: nil, afterDelay: 3)
    }
    
    @objc func showAdMob(){
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
        } else {
            print("Ad wasn't ready")
        }
    }
    
    @IBAction func sayHello(_ sender: Any) {
        showAdMob()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  customCell
//
//  Created by Macintosh HD on 3/18/18.
//  Copyright © 2018 google. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let animals: [String] = ["dog","cat","chicken"]
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (animals.count)
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        cell.myImage = UIImage(named: (animals[indexPath.row] + ".jpg"))
        cell.myLabel =
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


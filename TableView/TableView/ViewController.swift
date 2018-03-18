//
//  ViewController.swift
//  TableView
//
//  Created by Macintosh HD on 3/18/18.
//  Copyright © 2018 google. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    let items : [String] = ["Apple","Mango","Tomatos","Juice"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return (items.count)
    }
    
    
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        return(cell)
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


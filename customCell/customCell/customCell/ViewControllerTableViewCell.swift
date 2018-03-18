//
//  ViewControllerTableViewCell.swift
//  customCell
//
//  Created by Macintosh HD on 3/18/18.
//  Copyright © 2018 google. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UITableView!
    @IBOutlet weak var myImage: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

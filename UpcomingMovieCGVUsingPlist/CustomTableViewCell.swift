//
//  CustomTableViewCell.swift
//  TableView
//
//  Created by AST-iMac-0015 on 6/27/16.
//  Copyright © 2016 AST-iMac-0015. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var upComingMovieName: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

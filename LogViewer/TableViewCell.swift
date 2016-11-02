//
//  TableViewCell.swift
//  LogViewer
//
//  Created by Henrik Mygind on 02/11/2016.
//  Copyright © 2016 Widex A/S. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var smileyImageView: UIImageView?
    @IBOutlet weak var labelView: UILabel?
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

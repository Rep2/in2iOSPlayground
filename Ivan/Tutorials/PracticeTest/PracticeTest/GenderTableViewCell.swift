//
//  GenderTableViewCell.swift
//  PracticeTest
//
//  Created by IN2 MacbookPro on 23/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class GenderTableViewCell: UITableViewCell {

    @IBOutlet weak var gender: UISegmentedControl!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

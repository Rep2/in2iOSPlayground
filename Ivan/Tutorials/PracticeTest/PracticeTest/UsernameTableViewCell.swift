//
//  UsernameTableViewCell.swift
//  PracticeTest
//
//  Created by IN2 MacbookPro on 22/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit

class UsernameTableViewCell: UITableViewCell {

 
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var textInfo: UITextField!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
         super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
    super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

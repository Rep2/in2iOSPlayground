//
//  UICommentsTableViewCell.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 28/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit
///The class which handels the comment cells.
class UICommentsTableViewCell: UITableViewCell {
/** comment label for the comment*/
    @IBOutlet weak var commentLabel: UILabel!
    //Awekes, defines the look of the cell and calls the super method.
    override func awakeFromNib() {
        commentLabel.lineBreakMode = .ByWordWrapping
        commentLabel.numberOfLines = 0
        super.awakeFromNib()
    }
    
    ///Calls the super method.
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

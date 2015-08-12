//
//  UIDataCell.swift
//  WebServiceTest
//
//  Created by IN2 MacbookPro on 28/07/15.
//  Copyright (c) 2015 IN2 MacbookPro. All rights reserved.
//

import UIKit
/**
The class which shows information about the posts in a cell.
*/
class UIDataCell: UITableViewCell {
    /** The data for the cell.*/
    weak var data: DPTableData?
    /** The label for the username.*/
    @IBOutlet weak var UserCell: UILabel!
    /** the label for the title.*/
    @IBOutlet weak var titleLabel: UILabel!
    /** the label in which comes the text from the short.*/
    @IBOutlet weak var shortLabel: UILabel!
    /** the label which states the number of comments for this post.*/
    @IBOutlet weak var commentsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.UserCell.text=""
        self.titleLabel.text=""
        self.shortLabel.text=""
        self.commentsLabel.text=""
    }
    
/**
sets the data for each label from the 'data' variable.
*/
    func setData(){
        self.UserCell.text=data?.username
        let naslov=data?.title
        self.titleLabel.text="Naslov:"+naslov!
        self.shortLabel.text=data?.short
        let commCount=toString((data?.comCount)!)
        self.commentsLabel.text="Komentari("+commCount+")"
   
    }
///Calls the super method.
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

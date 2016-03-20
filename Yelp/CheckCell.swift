//
//  CheckCell.swift
//  Yelp
//
//  Created by VietCas on 3/20/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class CheckCell: UITableViewCell {
    
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.layer.borderColor = UIColor(colorLiteralRed: 0.5, green: 0.5, blue: 0, alpha: 0.5).CGColor
        self.contentView.layer.borderWidth = 0.8
        self.contentView.layer.cornerRadius = 3
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

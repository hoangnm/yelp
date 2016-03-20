//
//  SwitchCell.swift
//  Yelp
//
//  Created by VietCas on 3/19/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    
    weak var delegate: SwitchCellDelegate?
    var type = "country"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        onSwitch.addTarget(self, action: "switchValueChanged", forControlEvents: .ValueChanged)
        self.contentView.layer.borderColor = UIColor(hue: 0.23, saturation: 0.01, brightness: 0.75, alpha: 0.6).CGColor
        self.contentView.layer.borderWidth = 0.8
        self.contentView.layer.cornerRadius = 3
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateFrame() {
        self.frame.size.width -= 20
        self.frame.origin.x += 10
    }
    
    func switchValueChanged() {
        delegate?.switchCell?(self, didChangeValue: onSwitch.on)
    }

}

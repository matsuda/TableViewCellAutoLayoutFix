//
//  CustomCell.swift
//  TestCell
//
//  Created by Kosuke Matsuda on 2017/03/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var trailingConstraing: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!

    var accessoryViewFrameWidth: CGFloat {
        guard accessoryType != .none else {
            return 0
        }
        if UIScreen.main.bounds.width >= 414 {
            return 38
        }
        return 33
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        if #available(iOS 9.0, *) {
        } else {
            let screenWidth = UIScreen.main.bounds.width
            print(">>>>", bounds.width, " : ", screenWidth)
            let constraintWidth = screenWidth - accessoryViewFrameWidth - leadingConstraint.constant
            label1.preferredMaxLayoutWidth = constraintWidth
            label2.preferredMaxLayoutWidth = constraintWidth
            label3.preferredMaxLayoutWidth = constraintWidth
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

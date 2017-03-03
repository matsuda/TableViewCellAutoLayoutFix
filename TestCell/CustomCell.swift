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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        let screenWidth = UIScreen.main.bounds.width
//        print(">>>>", bounds.width, " : ", screenWidth)
//        if #available(iOS 9.0, *) {
//        } else {
//            if screenWidth != bounds.width && screenWidth > 400 {
//                let constraintWidth = screenWidth - 33 - leadingConstraint.constant
//                label1.preferredMaxLayoutWidth = constraintWidth
//                label2.preferredMaxLayoutWidth = constraintWidth
//                label3.preferredMaxLayoutWidth = constraintWidth
//            }
//        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

//    override func layoutSubviews() {
//        super.layoutSubviews()
//        var width = UIScreen.main.bounds.width - 5
//        width -= (33 + 94)
//        let w = label1.frame.width
//        print(">>>>>>>>>", w, " : ", width)
//        label1.preferredMaxLayoutWidth = width
//        label2.preferredMaxLayoutWidth = width
//        label3.preferredMaxLayoutWidth = width
//    }
}

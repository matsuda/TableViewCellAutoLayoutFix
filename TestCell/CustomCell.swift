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
        adjustPreferredMaxLayoutWidth(label: label1)
        adjustPreferredMaxLayoutWidth(label: label2)
        adjustPreferredMaxLayoutWidth(label: label3)
    }

    func adjustPreferredMaxLayoutWidth(label: UILabel) {
        if #available(iOS 9.0, *) { return }
        let rect = convertToContentView(from: label)
        let screenWidth = UIScreen.main.bounds.width
        let constraintWidth = screenWidth - accessoryViewFrameWidth - rect.origin.x
        label.preferredMaxLayoutWidth = constraintWidth
    }

    func convertToContentView(from view: UIView) -> CGRect {
        var rect = view.frame
        var parent = view.superview
//        print("rect >>>>>>", rect)
//        print("parent >>>", parent)
        while parent != nil && parent != contentView {
            rect = view.convert(view.bounds, to: parent?.superview)
            parent = parent?.superview
//            print("in rect >>>>>>>", rect)
//            print("in parent >>>", parent)
        }
        return rect
    }
}

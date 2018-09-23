//
//  DoneButton.swift
//  EOSPassport
//
//  Created by Vitaly Berg on 23/09/2018.
//  Copyright © 2018 Vitaly Berg. All rights reserved.
//

import UIKit

class DoneButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        var bg = UIImage.round(size: CGSize(width: 30, height: 30), radius: 6, color: rgb(2, 123, 255))
        bg = bg.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10), resizingMode: .stretch)
        setBackgroundImage(bg, for: .normal)
    }
}

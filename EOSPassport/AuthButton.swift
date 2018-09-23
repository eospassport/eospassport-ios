//
//  AuthButton.swift
//  EOSPassport
//
//  Created by Vitaly Berg on 23/09/2018.
//  Copyright © 2018 Vitaly Berg. All rights reserved.
//

import UIKit

class AuthButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        var bg = UIImage.round(size: CGSize(width: 52, height: 48), radius: 24, color: rgb(2, 123, 255))
        bg = bg.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24), resizingMode: .stretch)
        setBackgroundImage(bg, for: .normal)
    }
}


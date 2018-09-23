//
//  Image.swift
//  EOSPassport
//
//  Created by Vitaly Berg on 23/09/2018.
//  Copyright © 2018 Vitaly Berg. All rights reserved.
//

import UIKit

extension UIImage {
    class func round(size: CGSize, radius: CGFloat, color: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        
        color.setFill()
        UIBezierPath(roundedRect: CGRect(origin: CGPoint.zero, size: size), cornerRadius: radius).fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}

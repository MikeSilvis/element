//
//  extension-UIColor.swift
//  Element
//
//  Created by Mike Silvis on 6/25/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

extension UIColor {
    convenience init(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ alpha: CGFloat = 1.0) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: alpha)
    }

    public var suggestedTextColor: UIColor {
        return rgba.r * 0.299 + rgba.g * 0.787 + rgba.b * 0.114  > 0.72 ? Styles.Color.black.toColor : Styles.Color.white.toColor
    }

    private var rgba:(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        var rgba:(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) = (0, 0, 0, 0)
        self.getRed(&(rgba.r), green: &(rgba.g), blue: &(rgba.b), alpha: &(rgba.a))
        return rgba
    }
}

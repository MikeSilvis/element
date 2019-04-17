//
//  extension-UIFont.swift
//  Element
//
//  Created by Mike Silvis on 6/25/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

public extension UIFont {
    class func systemFont(ofSize size: Styles.Font.Size, weight: Styles.Font.Weight) -> UIFont {
        return UIFont.systemFont(ofSize: size.rawValue, weight: weight.rawValue)
    }
}


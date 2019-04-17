//
//  extension-Enum.swift
//  Element
//
//  Created by Mike Silvis on 6/25/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

extension RawRepresentable where RawValue == Int {
    public var float: CGFloat {
        return CGFloat(rawValue)
    }

    public static func enumerate() -> [Self] {
        var i = 0

        var allTypes: [Self] = []

        while true {
            if let type = Self(rawValue: i) {
                allTypes.append(type)
                i = i + 1
            } else {
                break
            }
        }

        return allTypes
    }
}

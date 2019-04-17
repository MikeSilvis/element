//
//  extension-Array.swift
//  Element
//
//  Created by Mike Silvis on 6/22/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

extension Array {
    public func object(index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}

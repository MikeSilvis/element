//
//  ElementControllerProtocol.swift
//  Element
//
//  Created by Mike Silvis on 6/22/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

public protocol ElementControllerProps {
    func instance() -> ElementControllerProtocol
}

public protocol ElementControllerProtocol {
    func update(props: ElementControllerProps)
}

//
//  ElementPageProtocol.swift
//  Element
//
//  Created by Mike Silvis on 6/22/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

public protocol ElementPageManager: class {
    var vc: UIViewController? { get }
}

extension ElementPageManager {
    public var page: ElementControllerProtocol? {
        return vc as? ElementControllerProtocol
    }
}

public protocol ElementPageProtocol {

}

public struct ElementPageProps {
    public enum Events {
        case willAppear
        case appear
        case willDisappear
        case disappear
    }

    let manager: ElementPageManager

    public typealias EventAction = (Events) -> Void
    let eventAction: EventAction
}


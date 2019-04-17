//
//  Renderable.swift
//  Element
//
//  Created by Mike Silvis on 6/25/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

public protocol RenderableProtocol {
    func update(props: RenderableProps?)
}

public protocol RenderableProps {
    func instance() -> RenderableProtocol
    func klass() -> AnyClass
}

class RenderableElement {
    let props: RenderableProps
    let renderable: RenderableProtocol?

    init(props: RenderableProps, renderable: RenderableProtocol?) {
        self.props = props
        self.renderable = renderable
    }
}

//
//  ElementAtomHairline.swift
//  Element
//
//  Created by Mike Silvis on 6/25/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

public class ElementAtomHairline: UIView {
    var props: Prop? = nil {
        didSet {
            propsDidUpdate(newValue: props, oldValue: oldValue)
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required public init(coder: NSCoder) {
        super.init(coder: coder)!

        setup()
    }

    private func setup() {
        backgroundColor = Styles.Color.black.toColor
    }

    private func propsDidUpdate(newValue: Prop?, oldValue: Prop?) {
    }

    public override var intrinsicContentSize: CGSize {
        return CGSize(width: UIViewNoIntrinsicMetric, height: 0.5)
    }
}

extension ElementAtomHairline: RenderableProtocol {
    public func update(props: RenderableProps?) {
        self.props = props as? Prop
    }
}

extension ElementAtomHairline {
    public struct Prop: RenderableProps {
        public init() { }

        public func instance() -> RenderableProtocol {
            return ElementAtomHairline()
        }

        public func klass() -> AnyClass {
            return ElementAtomHairline.self
        }
    }
}

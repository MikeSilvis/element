//
//  extension-UIVIew.swift
//  Element
//
//  Created by Mike Silvis on 6/25/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import Foundation

extension UIView {
    func bindToSuperView(edgeInsets: UIEdgeInsets = .zero) {
        guard let superview = self.superview else {
            return
        }

        translatesAutoresizingMaskIntoConstraints = false

        superview.addConstraints(
            NSLayoutConstraint.constraints(
                withVisualFormat: "H:|-left-[subview]-right-|",
                options: [],
                metrics: [
                    "left": edgeInsets.left,
                    "right": edgeInsets.right
                ],
                views: [
                    "subview": self
                ]
            )
        )

        superview.addConstraints(
            NSLayoutConstraint.constraints(
                withVisualFormat: "V:|-top-[subview]-bottom-|",
                options: [],
                metrics: [
                    "top": edgeInsets.top,
                    "bottom": edgeInsets.bottom
                ],
                views: [
                    "subview": self
                ]
            )
        )
    }
}

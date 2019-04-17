//
//  TabController.swift
//  ElementApp
//
//  Created by Mike Silvis on 6/22/18.
//  Copyright © 2018 Mike Silvis. All rights reserved.
//

import UIKit
import Element

class TabController: UITabBarController {
    var titleAttributes: [NSAttributedStringKey: Any] {
        return [
            NSAttributedStringKey.foregroundColor: Styles.Color.white.toColor
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let basicPageNC = UINavigationController(rootViewController: BasicPage().vc!)
        let listPageNC = UINavigationController(rootViewController: ListPage().vc!)

        setViewControllers([basicPageNC, listPageNC], animated: false)

        basicPageNC.navigationBar.barStyle = .black
        listPageNC.navigationBar.barStyle = .black
        tabBar.barStyle = .black
    }
}

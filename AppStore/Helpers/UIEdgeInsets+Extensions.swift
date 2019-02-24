//
//  UIEdgeInsets+Extensions.swift
//  AppStore
//
//  Created by Florian Thompson on 2/24/19.
//  Copyright © 2019 Florianthompson. All rights reserved.
//

import UIKit

extension UIEdgeInsets {
    init(all inset: CGFloat) {
        self.init(top: inset, left: inset, bottom: inset, right: inset)
    }
}

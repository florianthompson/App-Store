//
//  UILabel+Extension.swift
//  AppStore
//
//  Created by Florian Thompson on 2/24/19.
//  Copyright © 2019 Florianthompson. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(text: String) {
        self.init(frame: .zero)
        self.text = text
    }
}

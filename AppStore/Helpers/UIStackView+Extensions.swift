//
//  UIStackView+Extensions.swift
//  AppStore
//
//  Created by Florian Thompson on 2/24/19.
//  Copyright © 2019 Florianthompson. All rights reserved.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], spacing: CGFloat = 0, distribution: UIStackView.Distribution = .fill, alignment: UIStackView.Alignment = .fill) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
    }
}

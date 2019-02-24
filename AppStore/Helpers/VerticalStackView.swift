//
//  VerticalStackView.swift
//  AppStore
//
//  Created by Florian Thompson on 2/24/19.
//  Copyright © 2019 Florianthompson. All rights reserved.
//

import UIKit

class VerticalStackView: UIStackView {
    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        axis = .vertical
        self.spacing = spacing
        arrangedSubviews.forEach {
            self.addArrangedSubview($0)
        }
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

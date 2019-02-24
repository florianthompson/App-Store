//
//  SearchResultCell.swift
//  AppStore
//
//  Created by Florian Thompson on 2/24/19.
//  Copyright © 2019 Florianthompson. All rights reserved.
//

import UIKit

class SearchResultCell: UICollectionViewCell {

    static let reuseIdentifier = "searchResultReuseIdentifier"

    let appIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: .imageHeight).isActive = true
        iv.heightAnchor.constraint(equalToConstant: .imageHeight).isActive = true
        iv.layer.cornerRadius = .defaultPadding
        return iv
    }()
    let nameLabel = UILabel(text: "APP NAME")
    let categoryLabel = UILabel(text: "Photos & Videos")
    let ratingsLabel = UILabel(text: "9.26M")

    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: .buttonHeight).isActive = true
        button.layer.cornerRadius = .buttonHeight / 2
        return button
    }()
    lazy var screenShot1ImageView = self.createScreenshotImageView()
    lazy var screenShot2ImageView = self.createScreenshotImageView()
    lazy var screenShot3ImageView = self.createScreenshotImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)

        let overallStackView = VerticalStackView(
            arrangedSubviews: [
                UIStackView(arrangedSubviews: [appIconImageView, VerticalStackView(arrangedSubviews: [nameLabel, categoryLabel, ratingsLabel]), getButton], spacing: .defaultPadding, alignment: .center),
                UIStackView(arrangedSubviews: [screenShot1ImageView, screenShot2ImageView, screenShot3ImageView], spacing: .defaultPadding, distribution: .fillEqually)
            ],
            spacing: .maxPadding
        )
        addSubview(overallStackView)
        overallStackView.fillSuperview(padding: .init(all: .maxPadding))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }
}

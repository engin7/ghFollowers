//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by jason on 1/30/20.
//  Copyright © 2020 jason. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {

    let cache = NetworkManager.shared.cache
    let placeHolderImage = Images.placeHolder
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true // sets the image to not have sharp corners in addition to the layer corner radius
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}

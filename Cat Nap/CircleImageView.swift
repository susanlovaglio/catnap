//
//  CircleImageView.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/11/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {
    
    var viewModel: CircleImageViewViewModel

    init(size: CatSize, image: UIImage?) {
        
        self.viewModel = CircleImageViewViewModel(with: size)
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        if image != nil {
            self.image = image
        } else {
            self.backgroundColor = catColordimGray
            self.image = UIImage(named: "CatProfilePic")
            self.tintColor = UIColor.white
        }

        self.configure(with: self.viewModel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func configure(with viewModel: CircleImageViewViewModel) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: viewModel.width).isActive = true
        self.heightAnchor.constraint(equalToConstant: viewModel.height).isActive = true
        self.layer.cornerRadius = viewModel.corners
    }
}

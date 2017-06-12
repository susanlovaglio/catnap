//
//  CircleImageView.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/11/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {

    override init(image: UIImage?) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.layer.cornerRadius = 100.0
        if image != nil {
            self.image = image
        } else {
            self.backgroundColor = catColordimGray
            self.image = UIImage(named: "CatProfilePic")
            self.tintColor = UIColor.white
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

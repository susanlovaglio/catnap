//
//  UserSignUpViewController.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/12/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class UserSignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = CircleImageView(size: .CatSmall, image: nil)
        view.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -210).isActive = true
    }
}

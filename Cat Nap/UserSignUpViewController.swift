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

        let imageView = CircleImageView(image: nil)
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = catColordimGray
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -210).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }

}

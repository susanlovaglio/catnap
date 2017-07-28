//
//  ViewTesterViewController.swift
//  Cat Nap
//
//  Created by susan lovaglio on 7/1/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import Foundation
import UIKit

class ViewtesterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let catinfoviewmodel = CatInfoViewModel()
        let catview = CatInfoView(with: catinfoviewmodel)
        self.view.addSubview(catview)
        catview.translatesAutoresizingMaskIntoConstraints = false
        catview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        catview.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        catview.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        catview.widthAnchor.constraint(equalTo:self.view.widthAnchor).isActive = true
    }
}

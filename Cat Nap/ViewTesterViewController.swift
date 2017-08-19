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
        addTesterButtons()
    }
    
    func addTesterButtons() {
        let textfieldButton = UIButton(frame: CGRect(x: 10, y: 20, width: 100, height: 25))
        textfieldButton.setTitle("textfield", for: .normal)
        textfieldButton.backgroundColor = UIColor.black
        textfieldButton.addTarget(self, action: #selector(configureTextfield), for: .touchUpInside)
        self.view.addSubview(textfieldButton)
        
        let catbutton = UIButton(frame: CGRect(x: 10, y: 50, width: 100, height: 25))
        catbutton.setTitle("cat button", for: .normal)
        catbutton.backgroundColor = UIColor.black
        catbutton.addTarget(self, action: #selector(configureCatButton), for: .touchUpInside)
        self.view.addSubview(catbutton)
        
        let circleimage = UIButton(frame: CGRect(x: 10, y: 80, width: 100, height: 25))
        circleimage.setTitle("cirle image", for: .normal)
        circleimage.backgroundColor = UIColor.black
        circleimage.addTarget(self, action: #selector(configureCirlceImage), for: .touchUpInside)
        self.view.addSubview(circleimage)
        
        let catinfoview = UIButton(frame: CGRect(x: 10, y: 110, width: 100, height: 25))
        catinfoview.setTitle("cat info", for: .normal)
        catinfoview.backgroundColor = UIColor.black
        catinfoview.addTarget(self, action: #selector(configureInfoView), for: .touchUpInside)
        self.view.addSubview(catinfoview)
    }
    
    @objc func configureTextfield() {
        
    }
    
    @objc func configureCatButton() {
        
    }
    
    @objc func configureCirlceImage() {
        
    }
    
    @objc func configureInfoView() {
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

//
//  LogInViewController.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/9/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class UserLogInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textfield = CatTextField(with: .CatLarge)
        view.addSubview(textfield)
        textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        
        let textfield2 = CatTextField(with: .CatLarge)
        view.addSubview(textfield2)
        textfield2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textfield2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75).isActive = true
        
        let button = CatButton(with: .CatLarge, action: "tap me")
        view.addSubview(button)
        button.backgroundColor = UIColor(red: 111.0/255.0, green: 106.0/255.0, blue: 106.0/255.0, alpha: 100.0)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40).isActive = true
        
        let button2 = CatButton(with: .CatLarge, action: "tap me")
        view.addSubview(button2)
        button2.backgroundColor = UIColor(red: 83.0/255.0, green: 73.0/255.0, blue: 73.0/255.0, alpha: 100.0)
        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 125).isActive = true
        
        let button3 = CatButton(with: .CatLarge, action: "tap me")
        view.addSubview(button3)
        button3.backgroundColor = UIColor(red: 44.0/255.0, green: 117.0/255.0, blue: 109.0/255.0, alpha: 100.0)
        button3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 215).isActive = true
    }
}

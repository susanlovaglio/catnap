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
        
        let emailTextfield = CatTextField(with: .CatLarge, title: "Email")
        view.addSubview(emailTextfield)
        emailTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextfield.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -175).isActive = true
        
        let passwordTextfield = CatTextField(with: .CatLarge, title: "Password")
        view.addSubview(passwordTextfield)
        passwordTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextfield.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75).isActive = true
        
        let logInButton = CatButton(with: .CatLarge, action: "Log In")
        view.addSubview(logInButton)
        logInButton.backgroundColor = catColordimGray
        logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40).isActive = true
        
        let createButton = CatButton(with: .CatLarge, action: "Create An Account")
        view.addSubview(createButton)
        createButton.backgroundColor = catColorDeepPurple
        createButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        createButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 125).isActive = true
        
        let guestLogIn = CatButton(with: .CatLarge, action: "Continue as Guest")
        view.addSubview(guestLogIn)
        guestLogIn.backgroundColor = catColorGreen
        guestLogIn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        guestLogIn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 215).isActive = true
    }
}

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
        addClearButton()
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
        
        let profiletable = UIButton(frame: CGRect(x: 10, y: 140, width: 100, height: 25))
        profiletable.setTitle("table info", for: .normal)
        profiletable.backgroundColor = UIColor.black
        profiletable.addTarget(self, action: #selector(configureprofiletable), for: .touchUpInside)
        self.view.addSubview(profiletable)
    }
    
    @objc func configureTextfield() {
        let emailTextfield = CatTextField(with: .CatLarge, title: "Email")
        view.addSubview(emailTextfield)
        emailTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextfield.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -175).isActive = true
        
        let passwordTextfield = CatTextField(with: .CatLarge, title: "Password")
        view.addSubview(passwordTextfield)
        passwordTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextfield.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75).isActive = true
    }
    
    @objc func configureCatButton() {
        
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
    
    @objc func configureCirlceImage() {
        let imageView = CircleImageView(size: .CatLarge, type: .Cat, image: nil)
        view.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -210).isActive = true
    }
    
    @objc func configureInfoView() {
        let catinfoviewmodel = CatInfoViewModel(type: .Cat)
        let catview = CatInfoView(with: catinfoviewmodel)
        self.view.addSubview(catview)
        catview.translatesAutoresizingMaskIntoConstraints = false
        catview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        catview.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        catview.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        catview.widthAnchor.constraint(equalTo:self.view.widthAnchor).isActive = true
    }
    
    @objc func configureprofiletable() {
        let table = CatProfileTable(with: .Cat)
        self.view.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        table.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        table.heightAnchor.constraint(equalToConstant: 300).isActive = true
        table.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400).isActive = true
    }
    
    func clearAll() {
        for view in self.view.subviews {
            view.removeFromSuperview()
        }
        addTesterButtons()
        addClearButton()
    }
    
    func addClearButton() {
        let button = UIButton(frame: CGRect(x: 355, y: 20, width: 50, height: 25))
        button.backgroundColor = UIColor.red
        button.setTitle("X", for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(clearAll), for: .touchUpInside)
    }
}

//
//  CatInfoView.swift
//  Cat Nap
//
//  Created by susan lovaglio on 7/1/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class CatInfoView: UIView {

    let horizontalPadding = 25.0
    let verticalPadding = 25.00
    let topView: UIView
    let screen: CGRect = UIScreen.main.bounds
    let cardView: UIView
    let containerView: UIView

    override init(frame: CGRect) {
        self.containerView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.cardView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.topView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        super.init(frame: frame)
        self.configureContainerView()
        self.configureCardView()
        self.configureTopView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func configureCardView() {
        self.containerView.addSubview(cardView)
        self.cardView.translatesAutoresizingMaskIntoConstraints = false
        self.cardView.widthAnchor.constraint(equalToConstant: 320).isActive = true
        self.cardView.heightAnchor.constraint(equalToConstant: 550).isActive = true
        self.cardView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.cardView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.cardView.layer.cornerRadius = 5
        self.cardView.backgroundColor = UIColor.white
    }
    
    fileprivate func configureTopView() {
        self.cardView.addSubview(self.topView)
        self.topView.translatesAutoresizingMaskIntoConstraints = false
        self.topView.topAnchor.constraint(equalTo: self.cardView.topAnchor).isActive = true
        self.topView.leftAnchor.constraint(equalTo: self.cardView.leftAnchor).isActive = true
        self.topView.rightAnchor.constraint(equalTo: self.cardView.rightAnchor).isActive = true
        self.topView.bottomAnchor.constraint(equalTo: self.cardView.topAnchor, constant: screen.height * 0.350).isActive = true
        self.topView.layer.cornerRadius = 5
        self.topView.backgroundColor = catColordimGray
    }
    
    fileprivate func configureContainerView() {
        self.addSubview(containerView)
        self.containerView.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.containerView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.containerView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.containerView.backgroundColor = UIColor.black.withAlphaComponent(0.80)
    }
}

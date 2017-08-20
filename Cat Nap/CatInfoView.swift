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
    let photoView: CircleImageView
    let titleLabel: UILabel
    let subTitleLabel: UILabel

    init(with viewModel: CatInfoViewModel) {
        
        self.containerView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.cardView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.topView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.photoView = CircleImageView(size: .CatMedium, type:.Cat, image: nil)
        self.titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.subTitleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.configureContainerView()
        self.configureCardView()
        self.configureTopView()
        self.configurePhotoView()
        self.configureTitleLabel()
        self.configureSubTitleLabel()
        self.configureSquareEdge()
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
        let gesture = UITapGestureRecognizer(target: self, action: #selector(hideInfoView))
        self.containerView.addGestureRecognizer(gesture)
    }
    
    fileprivate func configurePhotoView() {
        self.topView.addSubview(self.photoView)
        self.photoView.topAnchor.constraint(equalTo: self.topView.topAnchor, constant: 10).isActive = true
        self.photoView.centerXAnchor.constraint(equalTo: self.topView.centerXAnchor).isActive = true
    }
    
    fileprivate func configureTitleLabel() {
        self.topView.addSubview(self.titleLabel)
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.topAnchor.constraint(equalTo: self.photoView.bottomAnchor, constant: 1).isActive = true
        self.titleLabel.leftAnchor.constraint(equalTo: self.topView.leftAnchor, constant: 5).isActive = true
        self.titleLabel.rightAnchor.constraint(equalTo: self.topView.rightAnchor, constant: -5).isActive = true
        self.titleLabel.bottomAnchor.constraint(equalTo: self.topView.bottomAnchor, constant: -50).isActive = true
        self.titleLabel.text = "TITLE LABEL"
        self.titleLabel.textColor = UIColor.white
        self.titleLabel.textAlignment = .center
    }
    
    fileprivate func configureSubTitleLabel() {
        self.topView.addSubview(self.subTitleLabel)
        self.subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.subTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 1).isActive = true
        self.subTitleLabel.bottomAnchor.constraint(equalTo: self.topView.bottomAnchor, constant: -5).isActive = true
        self.subTitleLabel.leftAnchor.constraint(equalTo: self.topView.leftAnchor, constant: 5).isActive = true
        self.subTitleLabel.rightAnchor.constraint(equalTo: self.topView.rightAnchor, constant: -5).isActive = true
        self.subTitleLabel.text = "Subtitle Label"
        self.subTitleLabel.textColor = UIColor.white
        self.subTitleLabel.textAlignment = .center
        self.subTitleLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.subTitleLabel.numberOfLines = 2
        self.subTitleLabel.font = self.subTitleLabel.font.withSize(self.titleLabel.font.pointSize * 0.85)
    }
    
    fileprivate func configureSquareEdge() {
        let squareView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.topView.addSubview(squareView)
        squareView.translatesAutoresizingMaskIntoConstraints = false
        squareView.backgroundColor = catColordimGray
        squareView.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 0.0).isActive = true
        squareView.leftAnchor.constraint(equalTo: self.topView.leftAnchor, constant: 0.0).isActive = true
        squareView.rightAnchor.constraint(equalTo: self.topView.rightAnchor, constant: 0.0).isActive = true
        squareView.bottomAnchor.constraint(equalTo: self.topView.bottomAnchor, constant: 5.0).isActive = true
    }
    
    @objc fileprivate func hideInfoView() {
        //TODO: move this to the user of the view
        self.isHidden = true
    }
}


















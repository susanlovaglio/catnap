//
//  CatTextField.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/9/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class CatTextField: UITextField {
    
    var viewModel: CatTextFieldViewModel
    var typeLabel: UILabel
    
    init(with size: CatSize, title: String) {
        self.viewModel = CatTextFieldViewModel(size: size)
        self.typeLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.configureTextField(with: viewModel)
        self.configureLabel(with: title)
        self.delegate = viewModel
        
    }
    
    fileprivate func configureTextField(with viewModel: CatTextFieldViewModel) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = viewModel.border
        self.layer.borderColor = viewModel.color
        self.widthAnchor.constraint(equalToConstant: viewModel.width).isActive = true
        self.heightAnchor.constraint(equalToConstant: viewModel.height).isActive = true
        self.layer.cornerRadius = viewModel.corners
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func configureLabel(with title: String) {
        self.addSubview(self.typeLabel)
        self.typeLabel.text = title
        self.typeLabel.textColor = UIColor.lightGray
        self.typeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.typeLabel.bottomAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.typeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0).isActive = true
    }
}

enum CatSize {
    case CatSmall, CatMedium, CatLarge
}

enum BeingType {
    case Human, Cat
}


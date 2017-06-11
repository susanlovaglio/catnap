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
    
    init(with size: CatSize) {
        self.viewModel = CatTextFieldViewModel(size: size)
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.configure(with: viewModel)
        self.delegate = viewModel
    }
    
    fileprivate func configure(with viewModel: CatTextFieldViewModel) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = viewModel.border
        self.layer.borderColor = viewModel.color
        self.widthAnchor.constraint(equalToConstant: viewModel.width).isActive = true
        self.heightAnchor.constraint(equalToConstant: viewModel.height).isActive = true
        self.layer.cornerRadius = viewModel.corners
        self.layer.shadowColor = UIColor.lightGray.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum CatSize {
    case CatSmall, CatMedium, CatLarge
}


















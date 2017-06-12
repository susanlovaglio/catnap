//
//  CatButton.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/10/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class CatButton: UIButton {

    var viewModel: CatButtonViewModel
    
    init(with size: CatSize, action: String) {
        self.viewModel = CatButtonViewModel(size: size)
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        configure(with: self.viewModel)
        self.setTitle(action, for: UIControlState.normal)
        self.titleLabel?.textColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func configure(with viewModel: CatButtonViewModel) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: viewModel.width).isActive = true
        self.heightAnchor.constraint(equalToConstant: viewModel.height).isActive = true
        self.layer.cornerRadius = viewModel.corners
        self.addTarget(viewModel, action: #selector(viewModel.didTapButton(sender:)), for: UIControlEvents.touchUpInside)
    }
}

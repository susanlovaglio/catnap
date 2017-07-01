//
//  CatButtonViewModel.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/10/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import Foundation
import UIKit

class CatButtonViewModel {
    
    var width: CGFloat = 0
    var height: CGFloat = 0
    var corners: CGFloat = 0
    
    let heightMultiplier: CGFloat = 0.095
    let radius: CGFloat = 35.0
    let screen = UIScreen.main.bounds

    
    init(size: CatSize) {
        
        if size == .CatSmall {
            self.configureWithSmall()
        } else if size == .CatMedium {
            self.configureWithMedium()
        } else if size == .CatLarge {
            self.configureWithLarge()
        }
    }
    
    fileprivate func configureWithSmall() {
        
        self.width = screen.width * 0.25
        self.height = screen.height * heightMultiplier
        self.corners = radius
    }
    
    fileprivate func configureWithMedium() {
        
        self.width = screen.width * 0.45
        self.height = screen.height * heightMultiplier
        self.corners = radius
    }
    
    fileprivate func configureWithLarge() {
        
        self.width = screen.width * 0.80
        self.height = screen.height * heightMultiplier
        self.corners = radius
    }
    
    @objc func didTapButton(sender: UIButton) {
        print("tapped")
    }

}

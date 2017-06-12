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
    
    var width: CGFloat
    var height: CGFloat
    var corners: CGFloat
    
    let heightMultiplier: CGFloat = 0.095
    let radius: CGFloat = 35.0
    
    init(size: CatSize) {
        
        self.width = 0.0
        self.height = 0.0
        self.corners = 0.0
        
        if size == .CatSmall {
            self.configureWithSmall()
        } else if size == .CatMedium {
            self.configureWithMedium()
        } else if size == .CatLarge {
            self.configureWithLarge()
        }
        
    }
    
    fileprivate func configureWithSmall() {
        
        let screen = UIScreen.main.bounds
        
        self.width = screen.width * 0.25
        self.height = screen.height * heightMultiplier
        self.corners = radius
    }
    
    fileprivate func configureWithMedium() {
        
        let screen = UIScreen.main.bounds
        
        self.width = screen.width * 0.45
        self.height = screen.height * heightMultiplier
        self.corners = radius
        
    }
    
    fileprivate func configureWithLarge() {
        
        let screen = UIScreen.main.bounds
        
        self.width = screen.width * 0.80
        self.height = screen.height * heightMultiplier
        self.corners = radius
    }
    
    @objc func didTapButton(sender: UIButton) {
        print("tapped")
    }

}

//
//  CircleImageViewViewModel.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/12/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import Foundation
import UIKit

class CircleImageViewViewModel {
    
    var width: CGFloat = 0
    var height: CGFloat = 0
    var corners: CGFloat = 0
    
    let radius: CGFloat = 100.0
    let screen: CGRect = UIScreen.main.bounds
    
    
    init(with size: CatSize) {
        
        if size == .CatSmall {
            self.configureWithSmall()
        } else if size == .CatMedium {
            self.configureWithMedium()
        } else if size == .CatLarge {
            self.configureWithLarge()
        }
    }
    
    fileprivate func configureWithSmall() {
        
        self.width = screen.width * 0.30
        self.height = screen.width * 0.30
        self.corners = radius * 0.60
    }
    
    fileprivate func configureWithMedium() {
        
        self.width = screen.width * 0.40
        self.height = screen.width * 0.40
        self.corners = radius * 0.80
        
    }
    
    fileprivate func configureWithLarge() {
        
        self.width = screen.width * 0.50
        self.height = screen.width * 0.50
        self.corners = radius
    }
}



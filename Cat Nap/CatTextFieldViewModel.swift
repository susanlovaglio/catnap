//
//  CatTextFieldViewModel.swift
//  Cat Nap
//
//  Created by susan lovaglio on 6/9/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import Foundation
import UIKit

class CatTextFieldViewModel: NSObject, UITextFieldDelegate {
    
    var width: CGFloat
    var height: CGFloat
    var placeHolderText: String?
    var corners: CGFloat
    
    let heightMultiplier: CGFloat = 0.075
    let radius: CGFloat = 18.0
    let color = UIColor.lightGray.cgColor
    let border: CGFloat = 1.5
    
    init(size: CatSize) {
                
        self.width = 0.0
        self.height = 0.0
        self.corners = 0.0
        
        super.init()

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
        
        self.width = screen.width * 0.15
        self.height = screen.height * heightMultiplier
        self.corners = radius
    }
    
    fileprivate func configureWithMedium() {
        
        let screen = UIScreen.main.bounds
        
        self.width = screen.width * 0.30
        self.height = screen.height * heightMultiplier
        self.corners = radius
        
    }
    
    fileprivate func configureWithLarge() {
        
        let screen = UIScreen.main.bounds
        
        self.width = screen.width * 0.65
        self.height = screen.height * heightMultiplier
        self.corners = radius
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}














//
//  CatProfileTable.swift
//  Cat Nap
//
//  Created by susan lovaglio on 8/19/17.
//  Copyright © 2017 Susan Lovaglio. All rights reserved.
//

import UIKit

class CatProfileTable: UITableView, UITableViewDataSource, UITableViewDelegate {

    var titles: [String] = []
    var images: [UIImage] = []
    
    init(with type: BeingType){
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: .grouped)
        self.backgroundColor = UIColor.clear
        self.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.delegate = self
        self.dataSource = self
        
        switch type {
        case .Human: configureHuman()
        case .Cat: configureCat()
        }
    }
    
    // MARK: - Configure For Type
    
    fileprivate func configureHuman() {
        let humanTitles = ["Calendar", "Payments", "Profile Statement", "Pending Requests"]
        titles = humanTitles
        
        let humanImages = provideHumanImages()
        images = humanImages
    }
    
    fileprivate func configureCat() {
        let catTitles = ["Hiding Spots", "Feeding", "Do's & Don't Touch There", "Previous Visits"]
        titles = catTitles
        
        let catImages = provideCatImages()
        images = catImages
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - DataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = titles[indexPath.row]
        cell.imageView?.image = images[indexPath.row]
        cell.imageView?.contentMode = .scaleAspectFit
        cell.layer.borderColor = UIColor.black.cgColor
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.textColor = UIColor.black
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    // MARK: - Image Makers

    func provideCatImages() -> [UIImage] {
        
        let imageNames = ["hidingcat", "foods", "no_nos", "gotocal"]
        var tempImages: [UIImage] = []
        
        for name in imageNames {
            let image = UIImage(named: name)
            tempImages.append(image!)
        }
        return tempImages
    }
    
    func provideHumanImages() -> [UIImage] {
        let imageNames = ["calendar", "money", "humansillos", "catsillos"]
        var tempImages: [UIImage] = []
        
        for name in imageNames {
            let image = UIImage(named: name)
            tempImages.append(image!)
        }
        return tempImages
    }
}


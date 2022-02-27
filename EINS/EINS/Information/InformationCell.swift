//
//  InformationCell.swift
//  EINS
//
//  Created by 정명곤 on 2022/02/25.
//

import UIKit

class InformationCell: UITableViewCell {

    static let identifier = "InformationCell"
    
    var leftImageView = UIImageView()
    var mainText = UILabel()
    var chevronImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    func layout() {
        self.addSubview(leftImageView)
        self.addSubview(mainText)
        self.addSubview(chevronImage)
        
        leftImageView.tintColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 1)
        
        mainText.tintColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 1)
        mainText.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        chevronImage.tintColor = .lightGray
        
        
        //  Auto Layout
        leftImageView.translatesAutoresizingMaskIntoConstraints = false
        leftImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        leftImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        leftImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        leftImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        mainText.translatesAutoresizingMaskIntoConstraints = false
        mainText.leftAnchor.constraint(equalTo: leftImageView.rightAnchor, constant: 30).isActive = true
        mainText.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        chevronImage.translatesAutoresizingMaskIntoConstraints = false
        chevronImage.widthAnchor.constraint(equalToConstant: 15).isActive = true
        chevronImage.heightAnchor.constraint(equalToConstant: 15).isActive = true
        chevronImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30).isActive = true
        chevronImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    
    
}

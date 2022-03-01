//
//  ShopBlockView.swift
//  EINS
//
//  Created by 정명곤 on 2022/02/28.
//

import UIKit

class ShopBlockView: UIView {
    
    var mainBlock = UIView()
    var mainImage = UIImageView()
    var titleLabel = UILabel()
    var discriptionLabel = UILabel()
    var leftButton = UIButton()
    var rightButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: rect)
        comInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let rect = CGRect(x: 0, y: 0, width: 200, height: 200)
    
    func comInit() {
        self.backgroundColor = .blue
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

//
//  ViewController.swift
//  EINS
//
//  Created by 정명곤 on 2022/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var middleImage: UIImageView!
    @IBOutlet weak var subDescriptionLabel: UILabel!
    @IBOutlet weak var noticeLabel: UILabel!
    
    @IBOutlet weak var bottomSpace: UIView!
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        setLabel()
        makeBottomSpace()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        bounceAnimation()
    }

    func setLabel() {
        
        
        
        subDescriptionLabel.text = "등록된 필터가 없습니다"
        subDescriptionLabel.textColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 1)
        subDescriptionLabel.font = UIFont.systemFont(ofSize: 15, weight: .light)
        
        noticeLabel.text = "필터를 등록해주세요"
        noticeLabel.textColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 1)
        noticeLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        
        addLabel.text = "새로운 필터 추가하기"
        addLabel.textColor = .white
        addLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        
        middleImage.tintColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 1)
        
        
    }
    
    func makeBottomSpace() {
        bottomSpace.layer.cornerRadius = 30
        bottomSpace.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        bottomSpace.backgroundColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 1)
        
        
                
    }
    
    func bounceAnimation() {
        
        UIView.animate(withDuration: 3,
                       delay: 0.5,
                       usingSpringWithDamping: 0.9,
                       initialSpringVelocity: 0.4,
                       options: [.repeat, .curveEaseInOut],
                       animations: {
            self.bottomSpace.center.y -= 40
        }, completion: nil)
    }

    

}


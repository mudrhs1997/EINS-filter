//
//  BuyingFilterController.swift
//  EINS
//
//  Created by 정명곤 on 2022/02/24.
//

import UIKit

class ShopViewController: UIViewController {
    
    @IBOutlet weak var blockView: UIView!
    @IBOutlet weak var blockDtailView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    let mainColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 1)
    let mainOpacityColor = UIColor(displayP3Red: 129 / 255, green: 129 / 255, blue: 242 / 255, alpha: 0.6)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeBlock()
        
        // Do any additional setup after loading the view.
    }
    
    
    func makeBlock() {
        
        
        blockDtailView.layer.borderWidth = 3
        blockDtailView.layer.borderColor = mainOpacityColor.cgColor
        blockDtailView.layer.cornerRadius = 20
        blockDtailView.layer.opacity = 1
        
        titleLabel.text = "GV900 자가 설치세트"
        titleLabel.font = .systemFont(ofSize: 19, weight: .heavy)
        titleLabel.textColor = mainColor
        
        descriptionLabel.text = "KC인증 아인스 GV900 고급 직수 언더싱크 정수기 대용량정수필터 자가 설치세트"
        descriptionLabel.font = .systemFont(ofSize: 14, weight: .bold)
        descriptionLabel.textColor = mainColor
        
        priceLabel.text = "185,000"
        priceLabel.font = .systemFont(ofSize: 15, weight: .heavy)
        priceLabel.textColor = mainOpacityColor
        
        
        discountPriceLabel.text = "130,000"
        discountPriceLabel.font = .systemFont(ofSize: 15, weight: .heavy)
        discountPriceLabel.textColor = mainColor
        
        
        leftButton.tintColor = mainColor
//        leftButton.setTitle("바로 구매", for: .normal)
        leftButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .heavy)
        leftButton.layer.borderWidth = 3
        leftButton.layer.borderColor = mainColor.cgColor
        leftButton.layer.cornerRadius = 20
        leftButton.clipsToBounds = true
        
        
        
        
        rightButton.tintColor = .white
//        rightButton.setTitle("포탈 접속", for: .normal)
        rightButton.setTitleColor(mainColor, for: .normal)
        
        rightButton.layer.borderWidth = 3
        rightButton.layer.borderColor = mainOpacityColor.cgColor
        rightButton.layer.cornerRadius = 20
        rightButton.layer.masksToBounds = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  InformationController.swift
//  EINS
//
//  Created by 정명곤 on 2022/02/24.
//

import UIKit

class InformationController: UIViewController {

    var informationModel = [[InformationModel]]()
    
    func makeData() {
        informationModel.append([
            InformationModel(leftImage: "questionmark.circle", mainText: "자주 묻는 질문", chevronImage: "chevron.right"),
            InformationModel(leftImage: "phone.fill", mainText: "담당자 전화 연결", chevronImage: "chevron.right"),
            InformationModel(leftImage: "phone.fill", mainText: "설정", chevronImage: "chevron.right")]
        )
    }
    
    
    
    
    @IBOutlet weak var informationTableVIew: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        informationTableVIew.delegate = self
        informationTableVIew.dataSource = self
        
        
        informationTableVIew.register(InformationCell.self, forCellReuseIdentifier: InformationCell.identifier)
        
        informationTableVIew.separatorStyle = .none
        
        
        
        makeData()

        // Do any additional setup after loading the view.
    }
    

}

extension InformationController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return informationModel[section].count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "InformationCell", for: indexPath) as! InformationCell
        
        cell.leftImageView.image = UIImage(systemName: informationModel[indexPath.section][indexPath.row].leftImage)
        cell.mainText.text = informationModel[indexPath.section][indexPath.row].mainText
        cell.chevronImage.image = UIImage(systemName: informationModel[indexPath.section][indexPath.row].chevronImage ?? "")
        
        return cell
    }
    
   
    
    
    
}

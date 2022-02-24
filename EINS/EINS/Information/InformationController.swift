//
//  InformationController.swift
//  EINS
//
//  Created by 정명곤 on 2022/02/24.
//

import UIKit

class InformationController: UIViewController {

    @IBOutlet weak var InformationTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.InformationTableView.backgroundColor = .blue

        // Do any additional setup after loading the view.
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

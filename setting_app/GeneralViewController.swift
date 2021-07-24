//
//  GeneralViewController.swift
//  setting_app
//
//  Created by 반예원 on 2021/07/24.
//

import UIKit
class GeneralCell : UITableViewCell{
    
    @IBOutlet weak var leftLabel: UILabel!
    
    
    @IBOutlet weak var rightImageView: UIImageView!{
        didSet{
            rightImageView.image = UIImage.init(systemName: "chevron.right")
            rightImageView.backgroundColor = .clear
            rightImageView.tintColor = .black
            
            
        }
        
    }
    
}
struct GeneralModel{
    
    var leftTitle = ""
    
    
}
class GeneralViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  var model = [[GeneralModel]]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralCell", for: indexPath)
        as! GeneralCell
        cell.leftLabel.text = model[indexPath.section][indexPath.row].leftTitle
        
        return cell
    }
    

    @IBOutlet weak var GeneralTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "General"
        self.navigationController?.navigationBar.prefersLargeTitles = false
        GeneralTableView.delegate = self
        GeneralTableView.dataSource = self
        GeneralTableView.backgroundColor = UIColor(white: 240/245, alpha: 1)
        
        
        model.append([GeneralModel(leftTitle: "About")])
        model.append(
        [GeneralModel(leftTitle: "KeyBoard"),
        GeneralModel(leftTitle: "Game Controller"),
        GeneralModel(leftTitle: "Fonts"),
        GeneralModel(leftTitle: "Language & Region"),
        GeneralModel(leftTitle: "Dictionary")])
        
        model.append([GeneralModel(leftTitle: "Reset")])
        
        
     
    }
    


}

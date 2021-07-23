//
//  ViewController.swift
//  setting_app
//
//  Created by 반예원 on 2021/07/13.
//

import UIKit

class ViewController: UIViewController{
    

    @IBOutlet weak var settingTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTableView.delegate = self
        settingTableView.dataSource = self
        
        
        settingTableView.register(UINib(nibName: "ProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
        // Do any additional setup after loading the view.
        settingTableView.register(UINib(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
        
        
    }
    
}


extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //어떤 쉘을 보여줄것이냐
        if indexPath.row == 0{   let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
            
            return cell}
     
    let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath)
    
        return cell
    
        
        
    }

  

}

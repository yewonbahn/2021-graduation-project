//
//  MyIDViewController.swift
//  setting_app
//
//  Created by 반예원 on 2021/07/24.
//

import UIKit

class MyIDViewController: UIViewController {

    @IBAction func doCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        emailTextField.addTarget(self, action: #selector(textFieldDIdChange), for: .editingChanged)
        
        textFieldDIdChange(sender: emailTextField)
    }

    @objc func textFieldDIdChange(sender: UITextField){
        if sender.text?.count == 0 {
            
            nextButton.isEnabled = false
            
        }else {
            nextButton.isEnabled = true
            
        }
        
         
        
    }

}

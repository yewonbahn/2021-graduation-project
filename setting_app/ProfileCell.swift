

//
//  ProfileCell.swift
//  setting_app
//
//  Created by 반예원 on 2021/07/13.
//

import UIKit

class ProfileCell: UITableViewCell {


    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var topTitle: UILabel!
    @IBOutlet weak var bottomDescription: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()


        profileImageView.layer.cornerRadius = CGFloat(60 / 2)
        
        topTitle.textColor = .blue
        topTitle.font = UIFont.systemFont(ofSize: 18)
        
        bottomDescription.textColor = .darkGray
        bottomDescription.font = UIFont.systemFont(ofSize: 10)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}

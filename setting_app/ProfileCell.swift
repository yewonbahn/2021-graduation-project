

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
        let profileHeight = 60

        profileImageView.layer.cornerRadius = CGFloat(profileHeight / 2)
        
        topTitle.textColor = .blue
        topTitle.font = UIFont.systemFont(ofSize: 20)
        
        bottomDescription.textColor = .darkGray
        bottomDescription.font = UIFont.systemFont(ofSize: 16)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}

//
//  MenuCell.swift
//  setting_app
//
//  Created by 반예원 on 2021/07/13.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var middleTitle: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

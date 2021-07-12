//
//  TaskTableViewCell.swift
//  RealmObjPersistence
//
//  Created by Nana Adwoa Odeibea Amoah on 7/12/21.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    
    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

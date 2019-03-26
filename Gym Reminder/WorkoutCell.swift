//
//  WorkoutCell.swift
//  Gym Reminder
//
//  Created by javier melendrez on 2/5/19.
//  Copyright © 2019 Javier Melendrez. All rights reserved.
//

import UIKit

class WorkoutCell: UITableViewCell {
    @IBOutlet weak var check_box: UIButton!
    @IBOutlet weak var task_label: UILabel!
    @IBAction func check_box_action(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

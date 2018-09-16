//
//  Item.swift
//  giaSwiftJSONApp
//
//  Created by Giannini Charles on 9/16/18.
//  Copyright © 2018 fortheFuture. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet var beganLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  BusinessCell.swift
//  Yelp
//
//  Created by student on 4/4/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    
    @IBOutlet var thumbImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var distanceLabel: UILabel!
    
    @IBOutlet var ratingsImageView: UIImageView!
    
    @IBOutlet var reviewsCountLabel: UILabel!
    
    @IBOutlet var addressLabel: UILabel!
    
    @IBOutlet var categoriesLabel: UILabel!
    
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
        }
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

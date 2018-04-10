//
//  BusinessCell.swift
//  Yelp
//
//  Created by Samuel Raymond on 02/08/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//
import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var posterImage: UIImageView!
    
    @IBOutlet weak var ratingImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var reviewsLabel: UILabel!
    
    @IBOutlet weak var tagsLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            posterImage.setImageWith(business.imageURL!)
            tagsLabel.text = business.categories
            addressLabel.text = business.address
            ratingImage.setImageWith(business.ratingImageURL!)
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            distanceLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        posterImage.layer.cornerRadius = 5
        posterImage.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

//
//  BusinessCell.swift
//  Yelp
//
//  Created by Ricardo Vila on 2/10/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbimageView: UIImageView!
    @IBOutlet weak var ratingsimageView: UIImageView!
    @IBOutlet weak var restaurantLabel: UILabel!
    @IBOutlet weak var ratingscounterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var pricingLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business! {
        didSet {
            restaurantLabel.text = business.name
            
            thumbimageView.setImageWithURL(business.imageURL!)
            
            streetLabel.text = business.address
            categoriesLabel.text = business.categories
            
            ratingsimageView.setImageWithURL(business.ratingImageURL!)
            
            distanceLabel.text = business.distance
            ratingscounterLabel.text = "\(business.reviewCount!) Reviews"
            
            
            
            
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thumbimageView.layer.cornerRadius = 3
        thumbimageView.clipsToBounds = true
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

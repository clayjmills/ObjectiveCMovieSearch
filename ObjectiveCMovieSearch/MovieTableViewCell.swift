//
//  MovieTableViewCell.swift
//  ObjectiveCMovieSearch
//
//  Created by Clay Mills on 3/17/17.
//  Copyright © 2017 PineAPPle LLC. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!

    @IBOutlet weak var movieDescriptionTextView: UITextView!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

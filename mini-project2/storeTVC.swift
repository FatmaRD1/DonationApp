//
//  storeTVC.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 06/03/2023.
//

import UIKit

class storeTVC: UITableViewCell {

    //Title
    @IBOutlet weak var lblName: UILabel!
    
    //details
    @IBOutlet weak var lblDesc: UILabel!
    
    //collected price
    @IBOutlet weak var lblPrice: UILabel!
    
    //image
    @IBOutlet weak var imgvImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

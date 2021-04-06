//
//  ImageCell.swift
//  MultipleCell
//
//  Created by Mikhail Plotnikov on 06.04.2021.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var picture: UIImageView!
    
    func configure(image: UIImage) -> UITableViewCell {
        picture.image = image
        return self
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

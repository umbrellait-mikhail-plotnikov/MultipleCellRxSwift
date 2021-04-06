//
//  TextFieldCell.swift
//  MultipleCell
//
//  Created by Mikhail Plotnikov on 06.04.2021.
//

import UIKit

class TextFieldCell: UITableViewCell {

    
    @IBOutlet weak var textField: UITextField!
    
    func configure(placeholder: String) -> UITableViewCell {
        textField.placeholder = placeholder
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

//
//  ExtensionTableViewCell.swift
//  MultipleCell
//
//  Created by Mikhail Plotnikov on 06.04.2021.
//

import Foundation
import UIKit

extension UITableViewCell {
    func configure(text: String) -> UITableViewCell {
        textLabel?.text = text
        return self
    }
}

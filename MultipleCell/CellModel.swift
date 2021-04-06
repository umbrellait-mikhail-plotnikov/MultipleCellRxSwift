//
//  Model.swift
//  MultipleCell
//
//  Created by Mikhail Plotnikov on 06.04.2021.
//

import Foundation
import UIKit

enum CellModel {
    case text(String)
    case image(UIImage)
    case textField(String)
    
    var identifier: CellIdentifier {
        switch self {
        case .text(_):
            return .text
        case .image(_):
            return .image
        case .textField(_):
            return .textField
        default:
            fatalError("Unknown type")
        }
    }
}

enum CellIdentifier: String {
  case text
  case image
  case textField
}

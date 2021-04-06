//
//  ViewModel.swift
//  MultipleCell
//
//  Created by Mikhail Plotnikov on 06.04.2021.
//

import Foundation
import RxSwift

class ViewModel {
    let message = Observable<[CellModel]>.just([
        .text("First"),
        .image(UIImage(named: "sw2")!),
        .textField("Custom placeholder"),
        .image(UIImage(named: "sw2")!),
        .text("Second")
    ])
}

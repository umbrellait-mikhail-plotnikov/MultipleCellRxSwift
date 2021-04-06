//
//  ViewController.swift
//  MultipleCell
//
//  Created by Mikhail Plotnikov on 06.04.2021.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private let viewModel = ViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellIdentifier.text.rawValue)
        tableView.register(UINib(nibName: "TextFieldCell", bundle: nil), forCellReuseIdentifier: CellIdentifier.textField.rawValue)
        tableView.register(UINib(nibName: "ImageCell", bundle: nil), forCellReuseIdentifier: CellIdentifier.image.rawValue)
        
        self.viewModel.message
            .bind(to: tableView.rx.items) { (table, index, cellType) in
                guard let cell = table.dequeueReusableCell(withIdentifier: cellType.identifier.rawValue) else {fatalError()}
                switch cellType {
                case let .text(text):
                    return cell.configure(text: text)
                case let .image(image):
                    guard let cell = cell as? ImageCell else {fatalError()}
                    
                    return cell.configure(image: image)
                case let .textField(placeholder):
                    guard let cell = cell as? TextFieldCell else {fatalError()}
                    
                    return cell.configure(placeholder: placeholder)

                }
            }
            .disposed(by: disposeBag)
    }


}

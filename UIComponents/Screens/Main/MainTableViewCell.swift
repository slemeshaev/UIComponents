//
//  MainTableViewCell.swift
//  UIComponents
//
//  Created by Stanislav Lemeshaev on 26.08.2023.
//  Copyright © 2023 slemeshaev. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    // MARK: - Properties
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Interface
    func configure(with item: String) {
        titleLabel.text = item
    }
}

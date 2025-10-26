//
//  ItemCell.swift
//  lootLogger
//
//  Created by Chris Mazurek on 10/26/25.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!

    func configure(for item: Item) {
        nameLabel.text = item.name
        serialNumberLabel.text = item.serialNumber
        valueLabel.text = "$\(item.valueInDollars)"

        // Apply the Bronze Challenge color logic
        if item.valueInDollars < 50 {
            valueLabel.textColor = UIColor.systemGreen
        } else {
            valueLabel.textColor = UIColor.systemRed
        }
    }
}


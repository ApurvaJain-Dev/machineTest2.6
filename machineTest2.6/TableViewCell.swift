//
//  TableViewCell.swift
//  machineTest2.6
//
//  Created by rpsindia on 13/09/19.
//  Copyright © 2019 Apurva. All rights reserved.
//

import UIKit

protocol TableViewCellDelegate {
    func didTappedSwitch(cell: TableViewCell)
}

class TableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var switchSelected: UISwitch!
    var delegate : TableViewCellDelegate!
    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    @IBAction func switchSelected(_ sender: UISwitch) {
        if let obj = delegate {
            obj.didTappedSwitch(cell: self)
        }
        if (sender.isOn == true) {
            print("switch is on")
        }
        else {
            print("switch is off")
       }
        
    }
    
    
    
    
    
}

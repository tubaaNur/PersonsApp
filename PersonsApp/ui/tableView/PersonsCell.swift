//
//  PersonsCell.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 3.08.2023.
//

import UIKit

class PersonsCell: UITableViewCell {

    @IBOutlet weak var labelPersonTel: UILabel!
    @IBOutlet weak var labelPersonName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

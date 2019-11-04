//
//  HistoricTableViewCell.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 30/10/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit

class HistoricTableViewCell: UITableViewCell {

    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var descricao: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

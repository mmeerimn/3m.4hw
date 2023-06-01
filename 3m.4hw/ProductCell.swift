//
//  ProductCell.swift
//  3m.4hw
//
//  Created Meerim Mamatkadyrova on 01.06.2023.
//

import Foundation
import UIKit

class ProductCell: UITableViewCell{
    
    var indexPath: IndexPath?
    
    @IBOutlet weak var productImageView: UIImageView!
   
    @IBOutlet weak var productTitleLabel: UILabel!
    
    @IBOutlet weak var productPriceLabel: UILabel!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .white
        productImageView.contentMode = .scaleAspectFit
        productImageView.layer.cornerRadius = 10
    }
    
}

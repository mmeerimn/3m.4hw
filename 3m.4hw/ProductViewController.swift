//
//  ProductViewController.swift
//  3m.4hw
//
//  Created Meerim Mamatkadyrova on 01.06.2023.
//

import UIKit

class ProductViewController: UIViewController {
    
    var Image: String!
    
    var productName: String!
    
    var productPrice: String!
    
    var roomType: String!
    
    var color: String!
    
    var material: String!
    
    var dimensions: String!
    
    var weight: String!
    
    var starCount: Int!
    
    @IBOutlet var ProductImage: UIImageView!
    
    @IBOutlet weak var ProductTitle: UILabel!
    
    @IBOutlet weak var ProductPrice: UILabel!
    
    @IBOutlet weak var RoomTypeLabel: UILabel!
    
    @IBOutlet weak var ColorLabel: UILabel!
    
    @IBOutlet weak var MaterialLabel: UILabel!
    
    @IBOutlet weak var DimesionsLabel: UILabel!
    
    @IBOutlet weak var WeightLabel: UILabel!

    @IBOutlet weak var LikeTap: UIImageView!

    @IBOutlet weak var star1: UIImageView!
    
    @IBOutlet weak var star2: UIImageView!
    
    @IBOutlet weak var star3: UIImageView!
    
    @IBOutlet weak var star4: UIImageView!
    
    @IBOutlet weak var star5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        ProductImage.image = UIImage(named: Image)

        ProductTitle.text = productName

        ProductPrice.text = productPrice

        RoomTypeLabel.text = roomType

        ColorLabel.text = color

        MaterialLabel.text = material

        DimesionsLabel.text = dimensions

        WeightLabel.text = weight
        
        stars()
        
        LikeTap.tintColor = .black
        LikeTap.isUserInteractionEnabled = true
        LikeTap.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(like)))
    }
    
    @objc func like(){
        if LikeTap.tintColor == .black{
            LikeTap.tintColor = .red
        }else{
            LikeTap.tintColor = .black
        }
    }
    
    func stars(){
        var stars: [UIImageView?] = [star1, star2, star3, star4, star5]
        var star = 0
        while star < starCount{
            stars[star]?.tintColor = .systemYellow
            star+=1
        }
        
    }
    
}

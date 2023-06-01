//
//  ViewController.swift
//  3m.4hw
//
//  Created Meerim Mamatkadyrova on 01.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var products: [Product] = [
        Product(id: 0, type: "Furniture", count: 142, image: "1",
                details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Corner Sofa",
                                        price: "1850 $",
                                        roomType: "Living Room",
                                        color: "White" ,
                                        material: "Textile, Velvet, Cotton",
                                        dimensions: "780 * 980 inches",
                                        weight: "374.6 Pounds",
                                        star: 3)),
        Product(id: 0, type: "Furniture", count: 231, image: "2",
               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                       price: "230 $",
                                       roomType: "Office, Living Room",
                                       color: "Yellow" ,
                                       material: "Textile, Velvet, Cotton",
                                       dimensions: "31 * 37 inches",
                                       weight: "20.3 Pounds",
                                       star: 5)),
        Product(id: 0, type: "Reading Table", count: 76, image: "3",
               details: ProductDetails(name: "Stanis Engineered Wood Study Table",
                                       price: "710 $",
                                       roomType: "Office",
                                       color: "Dark Brown" ,
                                       material: "Wood",
                                       dimensions: "54 * 127 inches",
                                       weight: "120 Pounds",
                                       star: 4)),
        Product(id: 0, type: "Kitchen", count: 51, image: "4",
               details: ProductDetails(name: "Stanis Engineered Wood Study Kitchen Set",
                                       price: "2300 $",
                                       roomType: "Kitchen",
                                       color: "Gray" ,
                                       material: "Wood",
                                       dimensions: "118 * 210 inches",
                                       weight: "440 Pounds",
                                       star: 4))
    ]

    

    @IBOutlet weak var productsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsTableView.dataSource = self
        productsTableView.delegate = self

    }

    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "product_cell", for: indexPath) as! ProductCell
        cell.indexPath = indexPath
        cell.productImageView.image = UIImage(named: products[indexPath.row].image)
        cell.productTitleLabel.text = products[indexPath.row].type
        cell.productPriceLabel.text = "\(products[indexPath.row].count) items"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVc = storyboard?.instantiateViewController(withIdentifier: "product_vc") as! ProductViewController

        productVc.productName = products[indexPath.row].details.name
        productVc.productPrice = products[indexPath.row].details.price
        productVc.roomType = products[indexPath.row].details.roomType
        productVc.color = products[indexPath.row].details.color
        productVc.material = products[indexPath.row].details.material
        productVc.dimensions = products[indexPath.row].details.dimensions
        productVc.weight = products[indexPath.row].details.weight
        productVc.Image = products[indexPath.row].image
        productVc.starCount = products[indexPath.row].details.star
    
        self.navigationController?.pushViewController(productVc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}


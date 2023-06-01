//
//  Product.swift
//  3m.4hw
//
//  Created Meerim Mamatkadyrova on 01.06.2023.
//

import Foundation
import UIKit

struct Product {
    let id: Int
    let type: String
    let count: Int
    let image: String
    let details: ProductDetails
}
struct ProductDetails {
    let name: String
    let price: String
    let roomType: String
    let color: String
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
}

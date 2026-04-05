//
//  Coin.swift
//  NetworkingTutorial
//
//  Created by Arjun Rana on 18/03/26.
//

import Foundation

struct Coin: Codable  , Identifiable {
    let id : String
    let symbol : String
    let name : String
    let current_price : Double
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case symbol
        case name
        case current_price
        case image
    }
}

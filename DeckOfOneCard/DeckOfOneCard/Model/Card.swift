//
//  Card.swift
//  DeckOfOneCard
//
//  Created by Kaleb  Carrizoza on 9/22/20.
//

import Foundation

struct TopLevelObject: Decodable {
    let cards:[Card]

}
struct Card: Decodable {
    let value: String
    let suit: String
    let image: URL
    
    

}

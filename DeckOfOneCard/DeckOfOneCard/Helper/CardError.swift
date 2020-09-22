//
//  CardError.swift
//  DeckOfOneCard
//
//  Created by Kaleb  Carrizoza on 9/22/20.
//

import Foundation


enum CardError: LocalizedError {
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String {
        switch self {
        
        case .invalidURL:
            return "Internal error. Please update Deck of on card or contact Support."
        case .thrownError(let error):
            return error.localizedDescription
        case .noData:
            return "The sever responded with no data."
        case .unableToDecode:
            return "The sever responded with bad data."
        }
    }
    
    
}

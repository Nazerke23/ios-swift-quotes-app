//
//  Quote.swift
//  QuotesApp
//
//  Created by Назерке Кулан on 05.10.2021.
//

import Foundation

class Quote : Identifiable, Decodable {
    
    var id:UUID?
    var image: String
    var image2: String
    var title: String
    var information: String
    var details: String
}

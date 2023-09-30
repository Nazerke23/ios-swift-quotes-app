//
//  QuoteModel.swift
//  QuotesApp
//
//  Created by Назерке Кулан on 06.10.2021.
//

import Foundation

class QuoteModel: ObservableObject{
    
    @Published var quotes = [Quote]()
    
    init(){
        self.quotes = DataServise.getLocalData()
    }
}

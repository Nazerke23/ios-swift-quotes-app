//
//  DataService.swift
//  QuotesApp
//
//  Created by Назерке Кулан on 05.10.2021.
//

import Foundation


class DataServise{
    
    static func getLocalData()-> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                let recipeData = try decoder.decode([Quote].self, from: data)
                for q in recipeData {
                    q.id = UUID()
                }
                
                return recipeData
                
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        
         return [Quote]()
    }
}

//
//  QuoteListView.swift
//  QuotesApp
//
//  Created by Назерке Кулан on 06.10.2021.
//

import SwiftUI

struct QuoteListView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        //Text(String(model.quotes[0].image))
        VStack{
            List(model.quotes){ q in
                NavigationLink(
                    destination: TestView(quote: q),
                    label: {
                        ZStack{
                            Image(q.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipped()
                            VStack(alignment: .leading){
                                Text(q.title)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding()
                                        .foregroundColor(.black)
                                
                            
                                Text(q.information)
                                        .font(.title2)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                        .padding(.leading)
                                }

                        }
                    })
                    .padding()
            }
        }
        .padding(.leading, -20)
        .padding(.trailing, 20)
          




        
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}

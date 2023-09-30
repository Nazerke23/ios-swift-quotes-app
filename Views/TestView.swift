//
//  TestView.swift
//  QuotesApp
//
//  Created by Назерке Кулан on 06.10.2021.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationLink(
            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
            label: {
                Text("Navigate")
            })
            .navigationBarTitle("")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

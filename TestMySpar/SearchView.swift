//
//  ContentView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 10.08.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image("mappin")
                    .resizable()
                    .scaledToFit()
                TextField("Москва, Москва и московская область ", text: $textFieldText)
            }
            .frame(height: 30)
            .padding(8)
            .background {
                Capsule()
                    .stroke(lineWidth: 1)
                    .foregroundColor(.green)
            }
            Image("menu")
                .frame(width: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                .scaleEffect(0.2)
                .scaledToFit()
                .foregroundColor(.green)
        }
        .padding(.horizontal)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

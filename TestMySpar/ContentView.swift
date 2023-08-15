//
//  ContentView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 15.08.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            TabView {
                MainView(viewModel: viewModel)
                    .tabItem {
                        tabItem(image: "arrow.up.and.down.and.arrow.left.and.right", title: "Главная")
                    }
                Text("Заглушка")
                    .tabItem {
                        tabItem(image: "command", title: "Каталог")
                    }
                Text("Заглушка")
                    .tabItem {
                        tabItem(image: "cart", title: "Корзина")
                    }
                Text("Заглушка")
                    .tabItem {
                        tabItem(image: "person", title: "Профиль")
                    }
            }
        }
    }
    
    @ViewBuilder
    func tabItem(image: String, title: String) -> some View {
        VStack {
            Image(systemName: image)
            Text(title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

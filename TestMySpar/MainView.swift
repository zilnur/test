//
//  MainView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 13.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                SearchView()
                StroriesView(stories: $viewModel.stories)
                PromotionsView(promotions: $viewModel.promotions)
                UserPointsView(userPoints: $viewModel.points)
                AnnouncementsView(announcements: $viewModel.announcements)
                VStack {
                    ForEach($viewModel.produncts) { productCategory in
                        ProductsView(products: productCategory)
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    @ObservedObject static var viewModel = ViewModel()
    static var previews: some View {
        MainView(viewModel: viewModel)
    }
}

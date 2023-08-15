//
//  ProductsView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 13.08.2023.
//

import SwiftUI

struct ProductsView: View {
    
    @Binding var products: ProdunctsCategory
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(products.title)
                .font(.system(size: 20, weight: .bold))
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 20) {
                    ForEach(products.products) { product in
                        VStack {
                            productImageView(product: product)
                            priceView(product: product)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    @ViewBuilder
    func productImageView(product: Product) -> some View {
        ZStack(alignment: .topLeading) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            if product.isPromotion {
                Text("Супер цена")
                    .foregroundColor(.white)
                    .font(.system(size: 8))
                    .padding(3)
                    .background(Color.red.opacity(0.5))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
    
    @ViewBuilder
    func priceView(product: Product) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(String(product.newPrice))
                    HStack(spacing: 0) {
                        Text("р")
                            .frame(alignment: .top)
                            .font(.system(size: 8))
                            .offset(y: -5)
                        Text("шт")
                            .frame(alignment: .bottom)
                            .font(.system(size: 8))
                            .offset(y: 5)
                    }
                    .background {
                        DiagonalLine().stroke(lineWidth: 1)
                    }
                    Spacer()
                    Image(systemName: "basket")
                        .padding(5)
                        .background(Circle().fill(.green))
                }
                if let oldPrice = product.oldPrice {
                    Text(String(oldPrice))
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            }
        }
        .padding(5)
    }
}

struct ProductsView_Preview: PreviewProvider {
    
    static var viewModel = ViewModel()
    
    static var previews: some View {
        MainView(viewModel: viewModel)
    }
}

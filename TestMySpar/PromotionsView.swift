//
//  PromotionsView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 11.08.2023.
//

import SwiftUI

struct PromotionsView: View {
    
    @Binding var promotions: [Promotions]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 5) {
                ForEach(promotions) { promotion in
                    Image(promotion.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 150, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .padding(.leading)
        }
    }
}

struct PromotionsView_Previews: PreviewProvider {
    @State static var promotions = [Promotions(image: "promotion")]
    static var previews: some View {
        PromotionsView(promotions: $promotions)
    }
}

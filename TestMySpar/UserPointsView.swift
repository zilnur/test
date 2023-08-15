//
//  UserPointsView.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 12.08.2023.
//

import SwiftUI

struct UserPointsView: View {
    
    @Binding var userPoints: Int
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("points")
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(Color("pointsBackground"))
            HStack(alignment: .bottom) {
                Text(String(userPoints))
                    .font(.system(size: 40, weight: .bold))
                Text("бонусов")
                    .font(.system(size: 30, weight: .bold))
                    .padding(.bottom, 3)
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
    }
}

struct UserPointsView_Previews: PreviewProvider {
    @State static var userPoints: Int = 5
    static var previews: some View {
        UserPointsView(userPoints: $userPoints)
    }
}
